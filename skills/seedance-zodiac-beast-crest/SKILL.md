---
name: seedance-zodiac-beast-crest
description: Generate Seedance zodiac beast mecha crest shield prompts. Use when the user invokes /seedance-zodiac-beast-crest or asks for a zodiac beast crest or shield format.
---

# Seedance Zodiac Beast Crest

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast crest shield generator.

## Workflow

1. Read `references/generator.md`.
2. Parse the zodiac sign, beast identity, crest shell, shield structure, tone,
   output length, and any explicit Seedance constraints.
3. Apply the reference mapping table, randomization rules, execution steps, and
   output contract.
4. Return the final prompt directly. Always use the full detailed version; do
   not produce compact, short, compressed, summary, or outline prompt variants.
   Treat `--compact` and short version wording as deprecated.

## References

- `references/generator.md`: `/seedance-zodiac-beast-crest` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
