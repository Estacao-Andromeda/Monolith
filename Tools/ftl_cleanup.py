#!/usr/bin/env python3
"""
FTL Cleanup Tool for Space Station 14 Monolith
Compares en-US and target locale FTL files and fixes common issues.

This tool:
1. Fixes empty entries by copying from en-US
2. Fixes incorrect variable references to match en-US
3. Removes unnecessary attributes when entity has literal values
4. Removes entire entries when they're redundant

Usage:
    python3 ftl_cleanup.py <en-us-file> <target-file> [--dry-run]
    python3 ftl_cleanup.py Resources/Locale/en-US/_Mono/prototypes.ftl Resources/Locale/pt-BR/_Mono/prototypes.ftl
"""

import argparse
import re
import sys
from pathlib import Path
from typing import Dict, List, Optional, Tuple


def parse_ftl_file(content: str) -> Tuple[List[Dict], List[str]]:
    """
    Parse FTL file into list of entries and standalone comments.

    Args:
        content: FTL file content

    Returns:
        Tuple of (entries, standalone_comments)
        - entries: list of FTL entries with keys, values, attributes
        - standalone_comments: list of comment lines that appear between entries
    """
    entries = []
    standalone_comments = []
    current_entry = None
    pending_comments = []
    in_header = True  # Start in header mode
    seen_first_entry = False  # Track if we've seen our first key-value entry
    passed_header = False

    for line in content.split('\n'):
        stripped = line.strip()

        # Handle blank lines
        if not stripped:
            if current_entry:
                # Only add single blank line as separator
                if not current_entry['trailing'] or current_entry['trailing'][-1] != '':
                    current_entry['trailing'].append('')
            elif in_header:
                # First blank line after header comments marks end of header
                in_header = False
                passed_header = True
            continue

        # Handle comment lines
        if stripped.startswith('#'):
            if in_header:
                # Still in header section, skip these comments
                continue
            if current_entry and current_entry.get('trailing') and current_entry['trailing'][-1] == '':
                # Comment after a blank line means it's a standalone comment between entries
                # Finalize the current entry and prepare for next
                entries.append(current_entry)
                current_entry = None
                pending_comments.append(line)
            elif current_entry:
                # Comment immediately after an entry (no blank line) - treat as trailing for this entry
                # This shouldn't happen in well-formed FTL, but handle it
                current_entry['trailing'].append(line)
            elif passed_header or seen_first_entry:
                # Standalone comment between entries (after header section)
                pending_comments.append(line)
            # else: This is a header comment, skip it
            continue

        # Handle attribute lines (.desc = ...)
        if stripped.startswith('.'):
            if current_entry is None:
                continue
            attr_match = re.match(r'\.([\w-]+)\s*=\s*(.*)', stripped)
            if attr_match:
                # Preserve the original indentation of the attribute
                attr_indent = '    '  # Default 4 spaces
                if not line.startswith('.'):
                    indent_match = re.match(r'^(\s+)', line)
                    if indent_match:
                        attr_indent = indent_match.group(1)

                current_entry['attributes'].append({
                    'name': attr_match.group(1),
                    'value': attr_match.group(2),
                    'indent': attr_indent
                })
            continue

        # Handle key-value lines
        key_match = re.match(r'^([\w-]+)\s*=\s*(.*)', stripped)
        if key_match:
            # Mark that we've seen our first entry and passed header
            seen_first_entry = True
            passed_header = True

            # Save previous entry if exists
            if current_entry:
                entries.append(current_entry)

            # Get the key and value
            key = key_match.group(1)
            value = key_match.group(2)

            # Main keys should not be indented in FTL
            current_entry = {
                'key': key,
                'value': value,
                'attributes': [],
                'trailing': [],
                'comments': pending_comments.copy()
            }
            pending_comments = []
        elif current_entry:
            # Unknown line type, add to trailing
            current_entry['trailing'].append(line)

    # Don't forget the last entry
    if current_entry:
        entries.append(current_entry)

    return entries, standalone_comments


def format_ftl_entry(entry: dict) -> List[str]:
    """Format a single FTL entry back to lines."""
    lines = []

    # Add comments before this entry (with blank line after)
    comments = entry.get('comments', [])
    for comment in comments:
        lines.append(comment)
    if comments:
        lines.append("")  # Blank line after comments

    # Main key-value line (no indent for main keys)
    lines.append(f"{entry['key']} = {entry['value']}")

    # Attributes with their original indentation
    for attr in entry['attributes']:
        attr_indent = attr.get('indent', '    ')
        lines.append(f"{attr_indent}.{attr['name']} = {attr['value']}")

    # Add trailing blank lines (typically one separator)
    if entry.get('trailing'):
        lines.extend(entry['trailing'])
    else:
        # Add single blank line separator after entry if no trailing
        lines.append("")

    return lines


def is_entity_reference(value: str) -> bool:
    """
    Check if value is an entity reference like {ent-BaseItem} or {ent-BaseItem.desc}.

    Args:
        value: The value to check

    Returns:
        True if value is an entity reference, False otherwise
    """
    stripped = value.strip()
    # Match {ent-...} where ... can include word chars, hyphens, and dots (for .desc, .suffix, etc.)
    return bool(re.match(r'^\{ent-[\w.-]+\}$', stripped))


def extract_entity_name(value: str) -> Optional[str]:
    """
    Extract entity name from a reference like {ent-BaseItem} or {ent-BaseItem.desc}.

    Args:
        value: The value to extract from

    Returns:
        The entity name without the {} and ent- prefix, or None if not a reference
        (includes any attribute suffix like .desc, .suffix, etc.)
    """
    stripped = value.strip()
    match = re.match(r'^\{ent-([\w.-]+)\}$', stripped)
    if match:
        return match.group(1)
    return None


def cleanup_ftl_file(en_us_path: Path, target_path: Path, dry_run: bool = False,
                     verbose: bool = False) -> Dict[str, int]:
    """
    Compare and cleanup target FTL file against en-US reference.

    Args:
        en_us_path: Path to en-US FTL file
        target_path: Path to target locale FTL file
        dry_run: If True, print changes without writing
        verbose: If True, print detailed information about each change

    Returns:
        Dictionary with statistics about changes made
    """
    if not en_us_path.exists():
        print(f"Error: en-US file not found: {en_us_path}", file=sys.stderr)
        sys.exit(1)

    if not target_path.exists():
        print(f"Error: Target file not found: {target_path}", file=sys.stderr)
        sys.exit(1)

    # Parse both files
    en_content = en_us_path.read_text(encoding='utf-8')
    target_content = target_path.read_text(encoding='utf-8')

    en_entries, _ = parse_ftl_file(en_content)
    target_entries, _ = parse_ftl_file(target_content)

    # Create lookup dictionaries
    en_dict = {e['key']: e for e in en_entries}
    target_dict = {e['key']: e for e in target_entries}

    # Track changes
    stats = {
        'fixed_empty': 0,
        'fixed_references': 0,
        'removed_attrs': 0,
        'removed_entries': 0,
        'total_processed': 0
    }

    # Track entries to remove
    entries_to_remove = set()

    # Process each target entry
    for key, target_entry in target_dict.items():
        if key not in en_dict:
            continue  # Skip if not in en-US (it's a pt-BR specific entry)

        en_entry = en_dict[key]
        stats['total_processed'] += 1

        target_value = target_entry['value']
        en_value = en_entry['value']

        # Rule 1: Fix variable references
        # If en-US has a variable reference and pt-BR doesn't match, fix it
        if is_entity_reference(en_value):
            if target_value != en_value:
                if verbose:
                    print(f"Fixing reference: {key}")
                    print(f"  Was: {target_value}")
                    print(f"  Now: {en_value}")
                target_entry['value'] = en_value
                stats['fixed_references'] += 1

        # Rule 2: Fix empty entries
        # If pt-BR is empty and en-US has a value, copy it
        elif not target_value.strip() and en_value.strip():
            if verbose:
                print(f"Fixing empty: {key}")
                print(f"  Now: {en_value}")
            target_entry['value'] = en_value
            stats['fixed_empty'] += 1

        # Rule 3: Remove unnecessary attributes
        # If pt-BR has a literal name (not a variable reference)
        # and attributes are variable references, remove the attributes
        if target_entry['attributes'] and not is_entity_reference(target_value):
            attrs_to_remove = []
            for i, attr in enumerate(target_entry['attributes']):
                if is_entity_reference(attr['value']):
                    attrs_to_remove.append(i)
                    if verbose:
                        print(f"Removing attribute .{attr['name']} from {key} (entity has literal value)")

            # Remove attributes in reverse order to maintain indices
            for i in reversed(attrs_to_remove):
                target_entry['attributes'].pop(i)
                stats['removed_attrs'] += 1

        # Rule 4: Remove entire entry if it has literal name AND all attributes are variable references
        # This means the entry is redundant (it should just inherit from the referenced entity)
        if (target_entry['attributes'] and
            not is_entity_reference(target_value) and
            all(is_entity_reference(attr['value']) for attr in target_entry['attributes'])):
            # Check if en-US has the same structure (literal value + variable attributes)
            en_same_structure = (not is_entity_reference(en_value) and
                               all(is_entity_reference(attr['value']) for attr in en_entry['attributes']))

            if en_same_structure:
                entries_to_remove.add(key)
                if verbose:
                    print(f"Removing entire entry: {key} (redundant with literal value)")

    # Apply removals
    for key in entries_to_remove:
        target_dict.pop(key)
        stats['removed_entries'] += 1

    # Write output
    if not dry_run:
        # Generate output lines preserving order from target file
        output_lines = []

        # Add header from target file
        header_lines = []
        for line in target_content.split('\n'):
            if line.strip().startswith('#'):
                header_lines.append(line)
            elif not line.strip() and header_lines:
                # First blank line after header
                header_lines.append(line)
                break
            else:
                break

        output_lines.extend(header_lines)

        # Add all entries
        for entry in target_dict.values():
            output_lines.extend(format_ftl_entry(entry))

        # Write to file
        target_path.write_text('\n'.join(output_lines) + '\n', encoding='utf-8')

    return stats


def main():
    """CLI entry point."""
    parser = argparse.ArgumentParser(
        description='FTL Cleanup Tool - Compare and fix locale files against en-US reference'
    )
    parser.add_argument(
        'en_us_file',
        help='Path to en-US FTL file (reference)'
    )
    parser.add_argument(
        'target_file',
        help='Path to target locale FTL file (to fix)'
    )
    parser.add_argument(
        '--dry-run',
        action='store_true',
        help='Show changes without writing to file'
    )
    parser.add_argument(
        '-v', '--verbose',
        action='store_true',
        help='Print detailed information about each change'
    )

    args = parser.parse_args()

    en_us_path = Path(args.en_us_file)
    target_path = Path(args.target_file)

    # If target_path is relative, make it relative to en_us_path's parent
    # This allows calling like: ftl_cleanup.py en-US/_Mono/prototypes.ftl pt-BR/_Mono/prototypes.ftl
    if not target_path.is_absolute() and str(target_path) == str(target_path.name):
        # Try to find corresponding file in pt-BR
        en_parts = en_us_path.parts
        if 'en-US' in en_parts:
            idx = en_parts.index('en-US')
            base_parts = en_parts[:idx]
            if idx + 1 < len(en_parts):
                rel_parts = en_parts[idx + 1:]
                # Construct pt-BR path
                target_path = Path('/'.join(base_parts)) / 'pt-BR' / '/'.join(rel_parts)

    print(f"Comparing:")
    print(f"  en-US: {en_us_path}")
    print(f"  target: {target_path}")
    print()

    stats = cleanup_ftl_file(
        en_us_path,
        target_path,
        dry_run=args.dry_run,
        verbose=args.verbose
    )

    print()
    print("Summary:")
    print(f"  Total entries processed: {stats['total_processed']}")
    print(f"  Fixed empty entries: {stats['fixed_empty']}")
    print(f"  Fixed variable references: {stats['fixed_references']}")
    print(f"  Removed attributes: {stats['removed_attrs']}")
    print(f"  Removed entries: {stats['removed_entries']}")

    if args.dry_run:
        print()
        print("(Dry run - no files were modified)")

    return 0


if __name__ == '__main__':
    sys.exit(main())
