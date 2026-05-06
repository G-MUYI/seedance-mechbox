---
name: seedance-zodiac-beast-mask
description: Generate Seedance zodiac beast mecha mask prompts. Use when the user invokes /seedance-zodiac-beast-mask or asks for a zodiac beast mask format.
---

# Seedance Zodiac Beast Mask

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast mask generator.

## Workflow

1. Read `references/generator.md`.
2. Parse the zodiac sign, beast identity, mask shell, face structure, tone,
   output length, and any explicit Seedance constraints.
3. Apply the reference mapping table, randomization rules, execution steps, and
   output contract.
4. Return the final prompt directly. Always use the full detailed version; do
   not produce compact, short, compressed, summary, or outline prompt variants.
   Treat `--compact` and short version wording as deprecated.

## References

- `references/generator.md`: `/seedance-zodiac-beast-mask` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
