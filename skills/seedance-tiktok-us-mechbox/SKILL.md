---
name: seedance-tiktok-us-mechbox
description: Generate US TikTok oriented Seedance mechanical box content and prompts, including 50 States Mech Box ideas. Use when the user invokes /tk-mechbox-us, asks for TikTok US mechanical box content, or needs state themed Seedance outputs.
---

# Seedance TikTok US Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the US
TikTok mechanical box content workflow.

## Workflow

1. Read `../../shared/references/mechbox-optimized-template.md` for the optimized
   prompt template (200-450 characters, follows seedance-prompt-research.md).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the requested US state, content angle, and any explicit constraints.
4. Apply the tiktok-us-mechbox section from the template: embed state flag colors
   and state-specific elements (Texas star, California bear) into mechanical design.
5. Return the final Seedance prompt directly.

## References

- `references/generator.md`: TikTok US content principles, parameters, series
  rules, and output structure.
- `references/states-full-prompts-01-05.md`: expanded 50 States Mech Box prompts
  for entries 01-05.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
