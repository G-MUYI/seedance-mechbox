---
name: seedance-mechbox
description: Generate Seedance 2.0 mechanical box transformation prompts for zodiac, vehicle, and one-shot mecha-box scenes. Use when the user invokes /seedance-mechbox or asks for transforming vehicle box prompts.
---

# Seedance Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` is only the entry
guide for the general mechanical box generator.

## Workflow

1. Read `references/generator-optimized.md` for the optimized prompt template
   (200-400 characters, follows seedance-prompt-research.md best practices).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the requested zodiac sign, vehicle type, tone, and any explicit
   Seedance constraints.
4. Apply the mapping table and fill in the optimized template.
5. Return the final prompt directly.

## References

- `references/generator.md`: complete generator rules, parameters, zodiac and
  vehicle mapping, execution steps, and output format.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
