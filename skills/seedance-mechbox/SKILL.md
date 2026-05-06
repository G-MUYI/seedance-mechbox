---
name: seedance-mechbox
description: Generate Seedance 2.0 mechanical box transformation prompts for zodiac, vehicle, and one-shot mecha-box scenes. Use when the user invokes /seedance-mechbox or asks for transforming vehicle box prompts.
---

# Seedance Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` is only the entry
guide for the general mechanical box generator.

## Workflow

1. Read `references/generator.md`.
2. Parse the requested zodiac sign, vehicle type, tone, output length, and any
   explicit Seedance constraints.
3. Apply the mapping table and output contract from the reference.
4. Return the final prompt directly. Use the full version by default unless the
   user explicitly asks for a compact output.

## References

- `references/generator.md`: complete generator rules, parameters, zodiac and
  vehicle mapping, execution steps, and output format.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
