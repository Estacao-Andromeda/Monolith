using System.Collections.Generic;
using System.Globalization;
using Robust.Shared.Enums;
using Robust.Shared.GameObjects;
using Robust.Shared.GameObjects.Components.Localization;
using Robust.Shared.Localization;

namespace Content.Shared.Localizations;

public sealed partial class ContentLocalizationManager
{
    [Dependency] private IEntityManager _entMan = default!;

    /// <summary>
    /// Portuguese-specific indefinite article function.
    /// Returns "um" for masculine/neuter entities, "uma" for feminine entities.
    /// </summary>
    private ILocValue FuncIndefinitePt(LocArgs args)
    {
        ILocValue val = args.Args[0];
        if (val.Value == null)
            return new LocValueString("um");

        string? input;
        // Check for custom indefinite attribute (entity-specific override)
        if (val.Value is EntityUid entity)
        {
            // First check GrammarComponent for explicit indefinite attribute
            if (_entMan.TryGetComponent(entity, out GrammarComponent? grammar) &&
                grammar.Attributes.TryGetValue("indefinite", out var indef))
            {
                return new LocValueString(indef);
            }

            // Get entity name for fallback
            input = _entMan.GetComponent<MetaDataComponent>(entity).EntityName;

            // Get gender and return appropriate article
            if (grammar?.Gender.HasValue == true)
            {
                return grammar.Gender.Value switch
                {
                    Gender.Female => new LocValueString("uma"),
                    _ => new LocValueString("um")  // male, neuter, epicene
                };
            }

            // Try to get gender from prototype attributes
            if (_entMan.GetComponent<MetaDataComponent>(entity).EntityPrototype is { } prototype)
            {
                var entityData = _loc.GetEntityData(prototype.ID);
                if (entityData.Attributes.TryGetValue("gender", out var genderStr))
                {
                    if (Enum.TryParse<Gender>(genderStr, true, out var gender))
                    {
                        return gender switch
                        {
                            Gender.Female => new LocValueString("uma"),
                            _ => new LocValueString("um")
                        };
                    }
                }
            }

            // Default for entities without gender info
            return new LocValueString("um");
        }

        // Fallback for plain strings - use heuristic
        input = val.Format(new LocContext());
        return GetIndefiniteArticleForString(input);
    }

    /// <summary>
    /// Determines the indefinite article for a plain string using Portuguese gender heuristics.
    /// First checks the exceptions dictionary, then applies suffix rules.
    /// For multi-word phrases, only the first word (the main noun) is considered.
    /// </summary>
    private static ILocValue GetIndefiniteArticleForString(string input)
    {
        if (string.IsNullOrEmpty(input))
            return new LocValueString("");

        // Split by spaces and use only the first word (main noun)
        // e.g., "mistura de químicos" → "mistura"
        var firstWord = input.Split(' ')[0];
        var lowerInput = firstWord.ToLower();

        // Check exceptions dictionary first
        if (PtGenderExceptions.TryGetValue(lowerInput, out var article))
            return new LocValueString(article);

        // Check feminine suffixes (longer suffixes checked first)
        foreach (var suffix in PtFeminineSuffixes)
        {
            if (lowerInput.EndsWith(suffix))
                return new LocValueString("uma");
        }

        // Check masculine suffixes
        foreach (var suffix in PtMasculineSuffixes)
        {
            if (lowerInput.EndsWith(suffix))
                return new LocValueString("um");
        }

        // Default to masculine
        return new LocValueString("um");
    }

    /// <summary>
    /// Portuguese feminine suffix patterns for heuristic article determination.
    /// Based on linguistic research from elon.io and practiceportuguese.com.
    /// Ordered by length (longer first) to ensure specific matches first.
    /// </summary>
    private static readonly string[] PtFeminineSuffixes =
    {
        "ície",     // superfície
        "tura",     // mistura, temperatura, criatura
        "dade",     // felicidade, cidade
        "tude",     // juventude, atitude
        "são",      // razão, televisão
        "gem",      // viagem, mensagem, garagem
        "agem",     // garagem, viagem
        "ice",      // velhice
        "eza",      // beleza, tristeza
        "ção",      // nação, situação
        "za",       // pizza
        "ura",      // figura, armadura
        "ã",        // irmã
        "a",        // mesa, casa
    };

    /// <summary>
    /// Portuguese masculine suffix patterns for heuristic article determination.
    /// Includes Greek-derived -ema/-oma words that are masculine despite ending in -a.
    /// </summary>
    private static readonly string[] PtMasculineSuffixes =
    {
        // "mento",    // pensamento, sentimento
        "ento",     // nascimento, sentimento
        "ismo",     // catolicismo, budismo
        "oma",      // aroma, diploma (Greek-derived, before "ma")
        "ema",      // problema, sistema, tema (Greek-derived, before "ma")
        // "zão",      // mamão
        "or",       // amor, professor
        "ês",       // português, inglês
        "il",       // perfil, projétil
        "el",       // papel, hotel
        "ol",       // controle
        "ul",       // azul
        "im",       // jardim, capim (before "m")
        "om",       // dom (some -om words)
        "m",        // homem, jardim
        "r",        // computador, amor
        "l",        // animal, papel
        "o",        // carro, livro
    };

    /// <summary>
    /// Dictionary of common Portuguese words that don't follow suffix patterns.
    /// Maps lowercase word to its article ("um" or "uma").
    /// Add exceptions here as they're discovered during testing.
    /// </summary>
    private static readonly Dictionary<string, string> PtGenderExceptions = new()
    {
        // Common feminine words ending in -e (pattern breaker)
        ["carne"] = "uma",
        ["arvore"] = "uma",  // árvore without accent
        ["árvore"] = "uma",
        ["cor"] = "a",     // color
        ["vez"] = "uma",   // time/occasion

        // Common masculine words ending in -e
        ["leite"] = "um",
        ["peixe"] = "um",
        ["dente"] = "um",
        ["problema"] = "um",  // covered by -ema suffix, but explicit here

        // Other common exceptions
        ["dia"] = "um",       // masculine despite ending in -a
        ["mapa"] = "um",      // masculine despite ending in -a
        ["radio"] = "um",     // masculine (can be fem in some contexts)
        ["sistema"] = "um",   // Greek -ema
        ["programa"] = "um",  // Greek -ema
    };

    /// <summary>
    /// Portuguese adjective gender agreement function.
    /// Converts an adjective to match the gender of a noun phrase.
    /// </summary>
    private ILocValue FuncAdjectivePt(LocArgs args)
    {
        ILocValue noun = args.Args[0];
        ILocValue adjective = args.Args[1];

        if (noun.Value == null || adjective.Value == null)
            return adjective;

        string nounStr = noun.Value is EntityUid entity
            ? _entMan.GetComponent<MetaDataComponent>(entity).EntityName
            : noun.Format(new LocContext());

        string adjStr = adjective.Format(new LocContext());

        // Determine gender from noun
        bool isFeminine = IsFeminineNoun(nounStr);

        // Convert adjective to match gender
        return new LocValueString(ConvertAdjectiveGender(adjStr, isFeminine));
    }

    /// <summary>
    /// Determines if a noun phrase is feminine using the same heuristic as INDEFINITE.
    /// </summary>
    private static bool IsFeminineNoun(string input)
    {
        if (string.IsNullOrEmpty(input))
            return false;

        // Split by spaces and use only the first word (main noun)
        var firstWord = input.Split(' ')[0];
        var lowerInput = firstWord.ToLower();

        // Check exceptions dictionary first
        if (PtGenderExceptions.TryGetValue(lowerInput, out var article))
            return article == "uma";

        // Check feminine suffixes
        foreach (var suffix in PtFeminineSuffixes)
        {
            if (lowerInput.EndsWith(suffix))
                return true;
        }

        // Default to masculine
        return false;
    }

    /// <summary>
    /// Converts an adjective to the specified gender.
    /// </summary>
    private static string ConvertAdjectiveGender(string adjective, bool toFeminine)
    {
        if (string.IsNullOrEmpty(adjective))
            return adjective;

        // Handle compound adjectives joined by " e " (and)
        if (adjective.Contains(" e "))
        {
            var parts = adjective.Split(" e ");
            var convertedParts = new string[parts.Length];
            for (int i = 0; i < parts.Length; i++)
            {
                convertedParts[i] = ConvertSingleAdjectiveGender(parts[i].Trim(), toFeminine);
            }
            return string.Join(" e ", convertedParts);
        }

        return ConvertSingleAdjectiveGender(adjective, toFeminine);
    }

    /// <summary>
    /// Converts a single adjective (not compound) to the specified gender.
    /// </summary>
    private static string ConvertSingleAdjectiveGender(string adjective, bool toFeminine)
    {
        if (!toFeminine)
            return adjective; // Assume input is masculine, only convert to feminine

        var lower = adjective.ToLower();

        // -o → -a (sabonoso → sabonosa, ferroso → ferrosa)
        if (lower.EndsWith("o"))
            return adjective.Substring(0, adjective.Length - 1) + "a";

        // -or → -ora (inferior → inferiora, superior → superiora)
        if (lower.EndsWith("or"))
            return adjective + "a";

        // -ês → -esa (português → portuguesa)
        if (lower.EndsWith("ês"))
            return adjective.Substring(0, adjective.Length - 2) + "esa";

        // -ão → -ã (são → sã) - Note: irregular cases like "irmão" → "irmã" work, but "irão" → "irona" is irregular
        if (lower.EndsWith("ão"))
            return adjective.Substring(0, adjective.Length - 2) + "ã";

        // -e and other endings: no change (invariable adjectives)
        return adjective;
    }
}
