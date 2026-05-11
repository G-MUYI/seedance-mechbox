---
name: seedance-zodiac-beast
description: Generate the main Seedance zodiac beast mecha transformation prompt. Use when the user invokes /seedance-zodiac-beast or needs the primary zodiac beast mechanical transformation output.
---

# Seedance Zodiac Beast

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
main zodiac beast generator.

## Workflow

1. Read `../../shared/references/mechbox-optimized-template.md` for the optimized
   prompt template (200-450 characters, follows seedance-prompt-research.md).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the zodiac sign, beast identity, tone, material shell, and any explicit
   Seedance constraints.
4. Apply the zodiac-beast section from the template: embed zodiac symbol and
   beast features into mechanical armor design.
5. Return the final prompt directly.

## References

- `references/generator.md`: main `/seedance-zodiac-beast` transformation
  generator.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
