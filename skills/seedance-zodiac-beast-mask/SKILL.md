---
name: seedance-zodiac-beast-mask
description: Generate Seedance zodiac beast mecha mask prompts. Use when the user invokes /seedance-zodiac-beast-mask or asks for a zodiac beast mask format.
---

# Seedance Zodiac Beast Mask

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast mask generator.

## Workflow

1. Read `../../shared/references/mechbox-optimized-template.md` for the optimized
   prompt template (200-450 characters, follows seedance-prompt-research.md).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the zodiac sign, beast identity, mask shell, face structure, tone, and
   any explicit Seedance constraints.
4. Apply the zodiac-beast-mask section from the template: target is mechanical
   mask with base support, mask frame, and beast facial features with eye lenses.
5. Return the final prompt directly.

## References

- `references/generator.md`: `/seedance-zodiac-beast-mask` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
