---
name: seedance-tiktok-us-mechbox
description: Generate US TikTok oriented Seedance mechanical box content and prompts, including 50 States Mech Box ideas. Use when the user invokes /tk-mechbox-us, asks for TikTok US mechanical box content, or needs state themed Seedance outputs.
---

# Seedance TikTok US Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the US
TikTok mechanical box content workflow.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

1. Read `../../shared/references/mechbox-optimized-template.md` for the optimized
   prompt template (200-400 characters, follows seedance-prompt-research.md).
2. Check if user provided reference images:
   - With reference images: use @Image1/@Image2 version (~350 characters)
   - Without reference images: use "final target" line version (~380-400 characters)
3. Default to optimized version (200-400 characters, follows Seedance 2.0 best practices).
   Only read `references/generator.md` when user explicitly requests "complete mapping table",
   "detailed rules", or "generator.md version".
4. Parse the requested US state, content angle, and any explicit constraints.
5. Apply the tiktok-us-mechbox section from the template: embed state flag colors
   and state-specific elements (Texas star, California bear) into mechanical design.
6. Use explicit timeline structure: [0s] [2s] [4s] [6s] [8s] [10s],
   each timestamp describes only one main action and one main camera change.
7. Return the final Seedance prompt directly.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: TikTok US content principles, parameters, series
  rules, and output structure.
- `references/states-full-prompts-01-05.md`: expanded 50 States Mech Box prompts
  for entries 01-05.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
