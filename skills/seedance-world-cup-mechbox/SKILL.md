---
name: seedance-world-cup-mechbox
description: Generate Seedance World Cup mechanical box prompts from country, team, player role, or football style. Use when the user invokes /seedance-world-cup-mechbox, /world-cup-mechbox, /football-mechbox, or asks for football-themed mechanical transformations.
---

# Seedance World Cup Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
World Cup football mechanical box generator.

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
4. Parse the requested country, national team, football figure cue, player role,
   match style, optional target override, and any explicit Seedance constraints.
5. Default to the country / national team path. Use recognizable star-player
   avatar mode only when the user explicitly asks for "像某位真实球员", "能看出是谁",
   "卡通球星", "Q版球员", or "球星人偶".
6. Infer a concrete football-compatible target object using the reference
   mapping table.
7. Apply the optimized template: embed national team colors in armor/frame
   contrast, translate jersey features into mechanical elements.
8. Use explicit timeline structure: [0s] [2s] [4s] [6s] [8s] [10s],
   each timestamp describes only one main action and one main camera change.
9. Return the final prompt directly.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: World Cup country / figure cue mapping, selection
  rules, safety rewrites, execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
