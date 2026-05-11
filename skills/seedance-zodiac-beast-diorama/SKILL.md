---
name: seedance-zodiac-beast-diorama
description: Generate Seedance zodiac beast mecha miniature diorama prompts. Use when the user invokes /seedance-zodiac-beast-diorama or asks for a zodiac beast miniature display format.
---

# Seedance Zodiac Beast Diorama

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast miniature diorama generator.

## Workflow

1. Read `../../shared/references/mechbox-optimized-template.md` for the optimized
   prompt template (200-450 characters, follows seedance-prompt-research.md).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the zodiac sign, beast identity, diorama scene, scale, material shell,
   tone, and any explicit Seedance constraints.
4. Apply the zodiac-beast-diorama section from the template: target is miniature
   diorama with scene base, frame, beast figure, and environment details.
5. Return the final prompt directly.

## References

- `references/generator.md`: `/seedance-zodiac-beast-diorama` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
