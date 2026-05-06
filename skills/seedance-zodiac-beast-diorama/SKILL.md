---
name: seedance-zodiac-beast-diorama
description: Generate Seedance zodiac beast mecha miniature diorama prompts. Use when the user invokes /seedance-zodiac-beast-diorama or asks for a zodiac beast miniature display format.
---

# Seedance Zodiac Beast Diorama

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast miniature diorama generator.

## Workflow

1. Read `references/generator.md`.
2. Parse the zodiac sign, beast identity, diorama scene, scale, material shell,
   tone, output length, and any explicit Seedance constraints.
3. Apply the reference mapping table, randomization rules, execution steps, and
   output contract.
4. Return the final prompt directly. Use the full version by default unless the
   user explicitly asks for a compact output.

## References

- `references/generator.md`: `/seedance-zodiac-beast-diorama` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
