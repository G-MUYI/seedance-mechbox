---
name: seedance-zodiac-beast-crest
description: Generate Seedance zodiac beast mecha crest shield prompts. Use when the user invokes /seedance-zodiac-beast-crest or asks for a zodiac beast crest or shield format.
---

# Seedance Zodiac Beast Crest

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast crest shield generator.

## Workflow

1. Read `../../shared/references/mechbox-optimized-template.md` for the optimized
   prompt template (200-450 characters, follows seedance-prompt-research.md).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the zodiac sign, beast identity, crest shell, shield structure, tone,
   and any explicit Seedance constraints.
4. Apply the zodiac-beast-crest section from the template: target is crest shield
   with base support, shield frame, and beast relief emblem.
5. Return the final prompt directly.

## References

- `references/generator.md`: `/seedance-zodiac-beast-crest` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
