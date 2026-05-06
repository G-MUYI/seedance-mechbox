---
name: seedance-zodiac-beast-bust
description: Generate Seedance zodiac beast mecha bust and chest statue prompts. Use when the user invokes /seedance-zodiac-beast-bust or asks for a zodiac beast bust format.
---

# Seedance Zodiac Beast Bust

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast bust generator.

## Workflow

1. Read `references/generator.md`.
2. Parse the zodiac sign, beast identity, bust material shell, pose, tone,
   output length, and any explicit Seedance constraints.
3. Apply the reference mapping table, randomization rules, execution steps, and
   output contract.
4. Return the final prompt directly. Use the full version by default unless the
   user explicitly asks for a compact output.

## References

- `references/generator.md`: `/seedance-zodiac-beast-bust` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
