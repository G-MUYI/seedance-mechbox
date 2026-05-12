---
name: seedance-american-truckbox
description: Generate Seedance 1980s and 1990s American heavy truck mechanical box prompts. Use when the user invokes /seedance-american-truckbox or needs truck themed Seedance transformation prompts.
---

# Seedance American Truckbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
American heavy truck mechanical box workflow.

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
4. Parse the truck archetype, era, drivetrain mood, location, and finish.
5. Apply the american-truckbox section from the template: embed truck features
   (rivets, chrome, highway stripes) into mechanical elements.
6. Use explicit timeline structure: [0s] [2s] [4s] [6s] [8s] [10s],
   each timestamp describes only one main action and one main camera change.
7. Return the final prompt directly.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: generator rules, trigger, parameters, truck mapping,
  detailed specs, and output contract.
- `references/full-prompts-01-06.md`: expanded prompts for entries 01-06.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
