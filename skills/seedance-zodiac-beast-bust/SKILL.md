---
name: seedance-zodiac-beast-bust
description: Generate Seedance zodiac beast mecha bust and chest statue prompts. Use when the user invokes /seedance-zodiac-beast-bust or asks for a zodiac beast bust format.
---

# Seedance Zodiac Beast Bust

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast bust generator.

## Workflow

1. Read `../../shared/references/mechbox-optimized-template.md` for the optimized
   prompt template (200-450 characters, follows seedance-prompt-research.md).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the zodiac sign, beast identity, bust material shell, pose, tone, and
   any explicit Seedance constraints.
4. Apply the zodiac-beast-bust section from the template: target is bust statue
   with base support, chest armor, and head/neck assembly.
5. Return the final prompt directly.

## References

- `references/generator.md`: `/seedance-zodiac-beast-bust` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
