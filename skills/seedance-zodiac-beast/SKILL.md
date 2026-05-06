---
name: seedance-zodiac-beast
description: Generate the main Seedance zodiac beast mecha transformation prompt. Use when the user invokes /seedance-zodiac-beast or needs the primary zodiac beast mechanical transformation output.
---

# Seedance Zodiac Beast

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
main zodiac beast generator.

## Workflow

1. Read `references/generator.md`.
2. Parse the zodiac sign, beast identity, tone, material shell, output length,
   and any explicit Seedance constraints.
3. Apply the reference mapping table, randomization rules, execution steps, and
   output contract.
4. Return the final prompt directly. Use the full version by default unless the
   user explicitly asks for a compact output.

## References

- `references/generator.md`: main `/seedance-zodiac-beast` transformation
  generator.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
