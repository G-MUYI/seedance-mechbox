---
name: seedance-mechbox
description: Generate Seedance 2.0 mechanical box transformation prompts for zodiac, vehicle, and one-shot mecha-box scenes. Use when the user invokes /seedance-mechbox or asks for transforming vehicle box prompts.
---

# Seedance Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` is only the entry
guide for the general mechanical box generator.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

1. Read `references/generator-optimized.md` for the optimized prompt template
   (200-400 characters, follows seedance-prompt-research.md best practices).
2. Check if user provided reference images:
   - With reference images: use @Image1/@Image2 version (~350 characters)
   - Without reference images: use "final target" line version (~380-400 characters)
3. Default to optimized version (200-400 characters, follows Seedance 2.0 best practices).
   Only read `references/generator.md` when user explicitly requests "complete mapping table",
   "detailed rules", or "generator.md version".
4. Parse the requested zodiac sign, vehicle type, tone, and any explicit
   Seedance constraints.
5. Apply the mapping table and fill in the optimized template.
6. Use explicit timeline structure: [0s] [2s] [4s] [6s] [8s] [10s],
   each timestamp describes only one main action and one main camera change.
7. Return the final prompt directly.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: complete generator rules, parameters, zodiac and
  vehicle mapping, execution steps, and output format.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
