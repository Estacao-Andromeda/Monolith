using System.Text;
using YamlDotNet.Core;
using YamlDotNet.RepresentationModel;

namespace EntityPrototypeParser;

class Program
{
    private static readonly string RepositoryRoot = FindRepositoryRoot();
    private static readonly string PrototypesPath = Path.Combine(RepositoryRoot, "Resources", "Prototypes");
    private static string LocaleOutputPath = Path.Combine(RepositoryRoot, "Resources", "Locale", "pt-BR"); // Default to pt-BR for backward compatibility
    private static string TargetLocale = "pt-BR"; // Default locale

    private static int _totalEntities;
    private static int _totalFiles;
    private static int _abstractEntitiesSkipped;
    private static int _abstractEntitiesIncluded;
    private static int _filesWithoutDescription;

    // Dictionaries for entity tracking and inheritance
    private static readonly Dictionary<string, EntityData> _abstractEntities = new();
    private static readonly Dictionary<string, YamlMappingNode> _allEntityNodes = new();

    // Blacklist of overly-generic abstract entities that should never provide inherited values
    private static readonly HashSet<string> _blacklistedGenericEntities = new()
    {
        "BaseItem"  // Has name="item" which is too generic for inheritance
    };

    static int Main(string[] args)
    {
        // Parse command-line arguments
        for (int i = 0; i < args.Length; i++)
        {
            switch (args[i].ToLower())
            {
                case "--locale":
                case "-l":
                    if (i + 1 < args.Length)
                    {
                        TargetLocale = args[++i];
                        LocaleOutputPath = Path.Combine(RepositoryRoot, "Resources", "Locale", TargetLocale);
                    }
                    else
                    {
                        Console.Error.WriteLine("Error: --locale requires a value (e.g., --locale en-US)");
                        return 1;
                    }
                    break;
                case "--en-us":
                    TargetLocale = "en-US";
                    LocaleOutputPath = Path.Combine(RepositoryRoot, "Resources", "Locale", "en-US");
                    break;
                case "--help":
                case "-h":
                    PrintHelp();
                    return 0;
                default:
                    Console.Error.WriteLine($"Error: Unknown argument: {args[i]}");
                    PrintHelp();
                    return 1;
            }
        }

        Console.WriteLine($"Entity Prototype Parser for {TargetLocale} Locale");
        Console.WriteLine("=========================================");
        Console.WriteLine();

        if (!Directory.Exists(PrototypesPath))
        {
            Console.Error.WriteLine($"Error: Prototypes directory not found: {PrototypesPath}");
            return 1;
        }

        // Create output directory if it doesn't exist
        Directory.CreateDirectory(LocaleOutputPath);

        // Parse all prototype files and group entities by fork folder
        var entitiesByTarget = new Dictionary<string, List<EntityData>>();
        var forkFolders = new HashSet<string>();

        // Pass 1: Collect all entities (without resolving inheritance)
        Console.WriteLine("Pass 1: Collecting all entities...");
        CollectAllEntities(PrototypesPath, entitiesByTarget, forkFolders);
        Console.WriteLine($"  Collected {_allEntityNodes.Count} entities");

        // Pass 2: Resolve inheritance for all entities
        Console.WriteLine();
        Console.WriteLine("Pass 2: Resolving inheritance...");
        ResolveAllInheritance(entitiesByTarget);
        Console.WriteLine("  Inheritance resolution complete");

        // Pass 3: Generate fluent files
        Console.WriteLine();
        Console.WriteLine("Generating fluent files...");
        Console.WriteLine();

        foreach (var (targetPath, entities) in entitiesByTarget.OrderBy(x => x.Key))
        {
            GenerateFluentFile(targetPath, entities);
        }

        // Print summary
        Console.WriteLine();
        Console.WriteLine("Summary:");
        Console.WriteLine($"  Target locale: {TargetLocale}");
        Console.WriteLine($"  Total prototype files processed: {_totalFiles}");
        Console.WriteLine($"  Total entities found: {_totalEntities}");
        Console.WriteLine($"  Abstract entities skipped (no data): {_abstractEntitiesSkipped - _abstractEntitiesIncluded}");
        Console.WriteLine($"  Abstract entities included (with data): {_abstractEntitiesIncluded}");
        Console.WriteLine($"  Entities without description: {_filesWithoutDescription}");
        Console.WriteLine($"  Fluent files generated: {entitiesByTarget.Count}");
        Console.WriteLine();
        Console.WriteLine("Done!");

        return 0;
    }

    static void PrintHelp()
    {
        Console.WriteLine("Entity Prototype Parser - Generate FTL localization files from YAML prototypes");
        Console.WriteLine();
        Console.WriteLine("Usage: EntityPrototypeParser [options]");
        Console.WriteLine();
        Console.WriteLine("Options:");
        Console.WriteLine("  --locale, -l <locale>  Target locale (e.g., en-US, pt-BR, es-ES)");
        Console.WriteLine("  --en-us               Shortcut for --locale en-US");
        Console.WriteLine("  --help, -h            Show this help message");
        Console.WriteLine();
        Console.WriteLine("Examples:");
        Console.WriteLine("  EntityPrototypeParser              # Generate pt-BR (default)");
        Console.WriteLine("  EntityPrototypeParser --en-us      # Generate en-US");
        Console.WriteLine("  EntityPrototypeParser --locale es-ES  # Generate Spanish");
    }

    static void CollectAllEntities(
        string dirPath,
        Dictionary<string, List<EntityData>> entitiesByTarget,
        HashSet<string> forkFolders,
        string? currentForkFolder = null)
    {
        var dirName = Path.GetFileName(dirPath);

        // Determine if this directory is a fork folder (starts with _)
        // If we're already in a fork folder context, don't change it
        // If we're not, and this dir starts with _, it becomes the new fork context
        string? effectiveForkFolder = currentForkFolder;
        if (currentForkFolder == null && dirName.StartsWith("_"))
        {
            effectiveForkFolder = dirName;
            forkFolders.Add(effectiveForkFolder);
        }

        // Check if this is a non-underscore version of a fork folder (merge logic)
        // Only applies if we're not already in a fork folder
        if (currentForkFolder == null && !dirName.StartsWith("_"))
        {
            var parentDir = Directory.GetParent(dirPath);
            if (parentDir != null)
            {
                var underscoreVersion = Path.Combine(parentDir.FullName, $"_{dirName}");
                if (Directory.Exists(underscoreVersion))
                {
                    // Merge into the underscore version
                    effectiveForkFolder = $"_{dirName}";
                    forkFolders.Add(effectiveForkFolder);
                }
            }
        }

        // Process all YAML files in this directory
        foreach (var yamlFile in Directory.GetFiles(dirPath, "*.yml"))
        {
            CollectYamlFile(yamlFile, entitiesByTarget, effectiveForkFolder);
        }

        // Recursively process subdirectories
        foreach (var subDir in Directory.GetDirectories(dirPath))
        {
            var subDirName = Path.GetFileName(subDir);

            // Skip subdirectory if it's a fork folder and we're already in a fork folder
            // (fork folders should be processed separately from root)
            if (currentForkFolder == null && subDirName.StartsWith("_"))
            {
                // Don't recurse into fork folders from root - they'll be processed separately
                CollectAllEntities(subDir, entitiesByTarget, forkFolders, subDirName);
            }
            else if (currentForkFolder != null)
            {
                // We're inside a fork folder, recurse with the same context
                CollectAllEntities(subDir, entitiesByTarget, forkFolders, currentForkFolder);
            }
            else
            {
                // Normal directory, recurse
                CollectAllEntities(subDir, entitiesByTarget, forkFolders, null);
            }
        }
    }

    static void CollectYamlFile(
        string filePath,
        Dictionary<string, List<EntityData>> entitiesByTarget,
        string? forkFolder)
    {
        try
        {
            var yamlStream = new YamlStream();
            using var reader = new StreamReader(filePath);
            yamlStream.Load(reader);

            var relativePath = Path.GetRelativePath(PrototypesPath, filePath);
            _totalFiles++;

            foreach (var doc in yamlStream.Documents)
            {
                if (doc.RootNode is not YamlSequenceNode sequenceNode)
                    continue;

                foreach (var node in sequenceNode)
                {
                    if (node is not YamlMappingNode mappingNode)
                        continue;

                    // Check if this is an entity
                    if (!IsEntityNode(mappingNode))
                        continue;

                    // The entity or its parent might be in _allEntityNodes for parent resolution
                    var entity = ExtractEntityData(mappingNode, relativePath);
                    if (entity == null)
                    {
                        // Still store the node for potential parent resolution
                        if (mappingNode.Children.TryGetValue(new YamlScalarNode("id"), out var idNode))
                        {
                            var id = (idNode as YamlScalarNode)?.Value?.ToString();
                            if (!string.IsNullOrEmpty(id))
                            {
                                _allEntityNodes[id] = mappingNode;
                            }
                        }
                        continue;
                    }

                    // Store the node for potential parent resolution
                    _allEntityNodes[entity.Id] = mappingNode;

                    // Determine target file path
                    string targetPath;
                    if (forkFolder != null)
                    {
                        targetPath = Path.Combine(LocaleOutputPath, forkFolder, "prototypes.ftl");
                    }
                    else
                    {
                        targetPath = Path.Combine(LocaleOutputPath, "prototypes.ftl");
                    }

                    if (!entitiesByTarget.ContainsKey(targetPath))
                    {
                        entitiesByTarget[targetPath] = new List<EntityData>();
                    }
                    entitiesByTarget[targetPath].Add(entity);
                }
            }
        }
        catch (Exception ex)
        {
            Console.Error.WriteLine($"Error parsing {filePath}: {ex.Message}");
        }
    }

    static void ResolveAllInheritance(Dictionary<string, List<EntityData>> entitiesByTarget)
    {
        var totalResolved = 0;
        var nameResolved = 0;
        var descResolved = 0;

        foreach (var (_, entities) in entitiesByTarget)
        {
            foreach (var entity in entities)
            {
                // Get the entity's node from _allEntityNodes
                if (!_allEntityNodes.TryGetValue(entity.Id, out var node))
                    continue;

                // Resolve inheritance for name (only if empty)
                if (string.IsNullOrEmpty(entity.Name))
                {
                    var (inheritedName, _, inheritedFrom) = ResolveInheritance(node);

                    if (!string.IsNullOrEmpty(inheritedName))
                    {
                        entity.InheritedNameFrom = inheritedFrom;
                        nameResolved++;
                        totalResolved++;
                    }
                }

                // Resolve inheritance for description (only if empty)
                if (string.IsNullOrEmpty(entity.Description))
                {
                    var (_, inheritedDesc, inheritedFrom) = ResolveInheritance(node);

                    if (!string.IsNullOrEmpty(inheritedDesc))
                    {
                        entity.InheritedDescriptionFrom = inheritedFrom;
                        descResolved++;
                        totalResolved++;
                    }
                }
            }
        }

        Console.WriteLine($"  Resolved {totalResolved} inherited values ({nameResolved} names, {descResolved} descriptions)");
    }

    static bool IsEntityNode(YamlMappingNode node)
    {
        if (!node.Children.TryGetValue(new YamlScalarNode("type"), out var typeNode))
            return false;

        var typeValue = (typeNode as YamlScalarNode)?.Value;
        return typeValue == "entity";
    }

    static (string? name, string? description, string? inheritedFrom) ResolveInheritance(
        YamlMappingNode node,
        HashSet<string>? visited = null)
    {
        if (visited == null)
            visited = new HashSet<string>();

        // Get id to prevent circular references
        if (!node.Children.TryGetValue(new YamlScalarNode("id"), out var idNode))
            return (null, null, null);

        var id = (idNode as YamlScalarNode)?.Value?.ToString();
        if (string.IsNullOrEmpty(id) || visited.Contains(id))
            return (null, null, null); // Circular reference detected

        visited.Add(id);

        // Extract parent IDs - handle both 'parent' (string) and 'parents' (array)
        var parentIds = ExtractParentIds(node);
        if (parentIds.Count == 0)
            return (null, null, null);

        // Accumulate name and description as we traverse the chain
        string? foundName = null;
        string? foundDesc = null;
        string? nameSource = null;

        // Breadth-first search through parent hierarchy
        // Queue stores: (parentIds to check, depth level)
        var queue = new Queue<List<string>>();
        queue.Enqueue(parentIds);
        var processedParents = new HashSet<string>(parentIds);

        while (queue.Count > 0)
        {
            var currentLayer = queue.Dequeue();

            // Check all parents in current layer
            foreach (var parentId in currentLayer)
            {
                // Skip if already visited to prevent cycles
                if (visited.Contains(parentId))
                    continue;

                visited.Add(parentId);

                // Check if parent is in _abstractEntities
                if (_abstractEntities.TryGetValue(parentId, out var parentEntity))
                {
                    // Skip blacklisted generic entities but continue searching
                    if (_blacklistedGenericEntities.Contains(parentId))
                    {
                        continue;
                    }

                    // Found parent with data - accumulate name and description
                    if (string.IsNullOrEmpty(foundName) && !string.IsNullOrEmpty(parentEntity.Name))
                    {
                        foundName = parentEntity.Name;
                        nameSource = parentId;
                    }
                    if (string.IsNullOrEmpty(foundDesc) && !string.IsNullOrEmpty(parentEntity.Description))
                    {
                        foundDesc = parentEntity.Description;
                    }
                }

                // Check if parent is in _allEntityNodes for further traversal OR data extraction
                if (_allEntityNodes.TryGetValue(parentId, out var parentNodeMapping))
                {
                    // Try to extract name/description from this non-abstract parent
                    var parentName = ExtractNameFromNode(parentNodeMapping);
                    var parentDesc = ExtractDescriptionFromNode(parentNodeMapping);

                    // Accumulate name and description
                    if (string.IsNullOrEmpty(foundName) && !string.IsNullOrEmpty(parentName))
                    {
                        foundName = parentName;
                        nameSource = parentId;
                    }
                    if (string.IsNullOrEmpty(foundDesc) && !string.IsNullOrEmpty(parentDesc))
                    {
                        foundDesc = parentDesc;
                    }

                    // Look for grandparents to continue searching
                    var grandParentIds = ExtractParentIds(parentNodeMapping);
                    if (grandParentIds.Count > 0)
                    {
                        // Enqueue unprocessed grandparents for next layer (deduplicated)
                        var nextLayer = grandParentIds
                            .Where(gid => !processedParents.Contains(gid) && !visited.Contains(gid))
                            .Distinct()
                            .ToList();

                        if (nextLayer.Count > 0)
                        {
                            // Mark as processed before enqueueing to prevent re-queuing
                            foreach (var gid in nextLayer)
                            {
                                processedParents.Add(gid);
                            }
                            queue.Enqueue(nextLayer);
                        }
                    }
                }
            }
        }

        // Return whatever we found (may be null if nothing found)
        return (foundName, foundDesc, nameSource);
    }

    static string? ExtractNameFromNode(YamlMappingNode node)
    {
        if (node.Children.TryGetValue(new YamlScalarNode("name"), out var nameNode))
        {
            return (nameNode as YamlScalarNode)?.Value?.ToString();
        }
        return null;
    }

    static string? ExtractDescriptionFromNode(YamlMappingNode node)
    {
        if (node.Children.TryGetValue(new YamlScalarNode("description"), out var descNode))
        {
            return (descNode as YamlScalarNode)?.Value?.ToString();
        }
        return null;
    }

    static List<string> ExtractParentIds(YamlMappingNode node)
    {
        var parentIds = new List<string>();

        // Try 'parents' (array) first
        if (node.Children.TryGetValue(new YamlScalarNode("parents"), out var parentsNode))
        {
            if (parentsNode is YamlSequenceNode parentsSeq)
            {
                foreach (var parentItem in parentsSeq)
                {
                    if (parentItem is YamlScalarNode parentScalar)
                    {
                        var parentId = parentScalar.Value?.ToString();
                        if (!string.IsNullOrEmpty(parentId))
                        {
                            parentIds.Add(parentId);
                        }
                    }
                }
                return parentIds;
            }
        }

        // Try 'parent' (can be either string or sequence)
        if (node.Children.TryGetValue(new YamlScalarNode("parent"), out var parentNode))
        {
            // Handle 'parent' as a sequence (array of parents)
            if (parentNode is YamlSequenceNode parentSeq)
            {
                foreach (var parentItem in parentSeq)
                {
                    if (parentItem is YamlScalarNode parentScalar)
                    {
                        var parentId = parentScalar.Value?.ToString();
                        if (!string.IsNullOrEmpty(parentId))
                        {
                            parentIds.Add(parentId);
                        }
                    }
                }
            }
            // Handle 'parent' as a scalar (single parent)
            else if (parentNode is YamlScalarNode parentScalar)
            {
                var parentId = parentScalar.Value?.ToString();
                if (!string.IsNullOrEmpty(parentId))
                {
                    parentIds.Add(parentId);
                }
            }
        }

        return parentIds;
    }

    static EntityData? ExtractEntityData(YamlMappingNode node, string sourceFile)
    {
        // Get id
        if (!node.Children.TryGetValue(new YamlScalarNode("id"), out var idNode))
            return null;

        var id = (idNode as YamlScalarNode)?.Value?.ToString();
        if (string.IsNullOrEmpty(id))
            return null;

        // Check if abstract
        bool isAbstract = false;
        if (node.Children.TryGetValue(new YamlScalarNode("abstract"), out var abstractNode))
        {
            if (abstractNode is YamlScalarNode absScalar && absScalar.Value == "true")
            {
                isAbstract = true;
            }
        }

        // Get name
        string? name = null;
        if (node.Children.TryGetValue(new YamlScalarNode("name"), out var nameNode))
        {
            name = (nameNode as YamlScalarNode)?.Value?.ToString();
        }

        // Get description
        string? description = null;
        if (node.Children.TryGetValue(new YamlScalarNode("description"), out var descNode))
        {
            description = (descNode as YamlScalarNode)?.Value?.ToString();
        }

        // Get suffix
        string? suffix = null;
        if (node.Children.TryGetValue(new YamlScalarNode("suffix"), out var suffixNode))
        {
            suffix = (suffixNode as YamlScalarNode)?.Value?.ToString();
        }

        var entity = new EntityData
        {
            Id = id,
            Name = name ?? string.Empty,
            Description = description ?? string.Empty,
            Suffix = suffix,
            SourceFile = sourceFile
        };

        if (isAbstract)
        {
            _abstractEntities[id] = entity; // Store for inheritance
            _abstractEntitiesSkipped++;

            // IMPORTANT: Include abstract entities with localizable data
            // They need to be in the output so child entities can reference them
            if (!string.IsNullOrEmpty(entity.Name) || !string.IsNullOrEmpty(entity.Description))
            {
                entity.IsAbstract = true;
                _abstractEntitiesIncluded++;
                _totalEntities++;

                if (string.IsNullOrEmpty(entity.Description))
                {
                    _filesWithoutDescription++;
                }

                return entity;
            }

            return null; // Skip abstract entities with no localizable data
        }

        _totalEntities++;
        if (string.IsNullOrEmpty(entity.Description))
        {
            _filesWithoutDescription++;
        }

        return entity;
    }

    static void GenerateFluentFile(string targetPath, List<EntityData> entities)
    {
        // Create directory if needed
        var directory = Path.GetDirectoryName(targetPath);
        if (!string.IsNullOrEmpty(directory))
        {
            Directory.CreateDirectory(directory);
        }

        // Sort entities by source file, then by ID
        var sortedEntities = entities
            .OrderBy(e => e.SourceFile)
            .ThenBy(e => e.Id)
            .ToList();

        using var writer = new StreamWriter(targetPath, false, new UTF8Encoding(false));

        writer.WriteLine("# ====================================================================");
        writer.WriteLine("# Entity Localization File");
        writer.WriteLine($"# Generated: {DateTime.Now:yyyy-MM-dd HH:mm:ss}");
        writer.WriteLine("# Total entities: " + entities.Count);
        writer.WriteLine("# ====================================================================");
        writer.WriteLine();

        string? currentSourceFile = null;

        foreach (var entity in sortedEntities)
        {
            // Skip if entity has NO localizable data at all
            // An entity must have at least one of: name, description, or suffix (direct value, not inherited)
            if (string.IsNullOrEmpty(entity.Name) &&
                string.IsNullOrEmpty(entity.Description) &&
                string.IsNullOrEmpty(entity.Suffix))
            {
                continue;
            }

            // Determine what to write for each field
            bool hasOwnName = !string.IsNullOrEmpty(entity.Name);
            bool hasOwnDescription = !string.IsNullOrEmpty(entity.Description);
            bool hasOwnSuffix = !string.IsNullOrEmpty(entity.Suffix);

            // If entity has nothing of its own (only inherited data), skip it
            if (!hasOwnName && !hasOwnDescription && !hasOwnSuffix)
            {
                continue;
            }

            // Add source file comment when it changes
            if (entity.SourceFile != currentSourceFile)
            {
                currentSourceFile = entity.SourceFile;
                writer.WriteLine($"# From: {currentSourceFile}");
                writer.WriteLine();
            }

            // Add comment for abstract entities
            if (entity.IsAbstract)
            {
                writer.WriteLine($"# Abstract entity (referenceable by children)");
            }

            // Determine name value - use reference if inheriting, otherwise use own name
            string nameValue;
            if (!hasOwnName && entity.InheritedNameFrom != null)
            {
                // Name is inherited - reference parent's FTL key
                nameValue = $"{{ent-{entity.InheritedNameFrom}}}";
            }
            else
            {
                // Use own name (already escaped by EscapeFluentString)
                nameValue = EscapeFluentString(entity.Name);
            }

            writer.WriteLine($"ent-{entity.Id} = {nameValue}");

            // Only write suffix if entity has its own suffix value
            // Don't create .suffix entry if it's inherited
            if (hasOwnSuffix)
            {
                writer.WriteLine($"    .suffix = {EscapeFluentString(entity.Suffix!)}");
            }

            // Only write description if entity has its own description value
            // Don't create .desc entry if it's inherited
            if (hasOwnDescription)
            {
                writer.WriteLine($"    .desc = {EscapeFluentString(entity.Description)}");
            }

            writer.WriteLine();
        }

        // Print summary
        var relativePath = Path.GetRelativePath(LocaleOutputPath, targetPath);
        Console.WriteLine($"  Generated: {relativePath} ({entities.Count} entities)");
    }

    static string EscapeFluentString(string input)
    {
        if (string.IsNullOrEmpty(input))
            return string.Empty;

        // Fluent uses backslash for escaping
        // We need to escape: backslashes, newlines, braces, and quotes
        return input
            .Replace("\\", "\\\\")   // Must be first to avoid double-escaping
            .Replace("\r", "\\r")     // Escape carriage returns
            .Replace("\n", "\\n")     // Escape newlines
            .Replace("{", "\\{")
            .Replace("}", "\\}")
            .Replace("\"", "\\\"");    // Escape quotes
    }

    static string FindRepositoryRoot()
    {
        var dir = Directory.GetCurrentDirectory();
        while (dir != null)
        {
            if (File.Exists(Path.Combine(dir, "global.json")) &&
                Directory.Exists(Path.Combine(dir, "Resources")) &&
                Directory.Exists(Path.Combine(dir, "Content.Shared")))
            {
                return dir;
            }

            var parent = Directory.GetParent(dir);
            dir = parent?.FullName;
        }

        throw new DirectoryNotFoundException("Could not find repository root");
    }

    class EntityData
    {
        public required string Id { get; init; }
        public string Name { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string? Suffix { get; init; }
        public required string SourceFile { get; init; }

        // Inheritance tracking fields
        public string? InheritedNameFrom { get; set; }
        public string? InheritedDescriptionFrom { get; set; }
        public bool IsAbstract { get; set; }
    }
}
