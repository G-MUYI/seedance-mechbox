---
name: seedance-american-truckbox
description: Generate Seedance 1980s and 1990s American heavy truck mechanical box prompts. Use when the user invokes /seedance-american-truckbox or needs truck themed Seedance transformation prompts.
---

# Seedance American Truckbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
American heavy truck mechanical box workflow.

## Workflow

1. Read `../../shared/references/mechbox-optimized-template.md` for the optimized
   prompt template (200-450 characters, follows seedance-prompt-research.md).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the truck archetype, era, drivetrain mood, location, and finish.
4. Apply the american-truckbox section from the template: embed truck features
   (rivets, chrome, highway stripes) into mechanical elements.
5. Return the final prompt directly.

## References

- `references/generator.md`: generator rules, trigger, parameters, truck mapping,
  detailed specs, and output contract.
- `references/full-prompts-01-06.md`: expanded prompts for entries 01-06.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
