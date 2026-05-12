---
name: seedance-world-cup-mechbox
description: Generate Seedance World Cup mechanical box prompts from country, team, player role, or football style. Use when the user invokes /seedance-world-cup-mechbox, /world-cup-mechbox, /football-mechbox, or asks for football-themed mechanical transformations.
---

# Seedance World Cup Mechbox

Follow `../../AGENTS.md` first in the source repository; after deployment, follow the mirrored `../_shared/AGENTS.md` if the root file is not present. This file is only the skill entrypoint and navigation guide; it must not redefine camera, audio, timeline, prompt-length, or transformation behavior.

## Scope

Use this skill for the trigger surface and theme described in the frontmatter `description`.

## References

- `references/generator-optimized.md`: default output contract and compact prompt template.
- `references/generator.md`: detailed mappings, target-selection rules, examples, and the fallback source when the user asks for a detailed or full version.
