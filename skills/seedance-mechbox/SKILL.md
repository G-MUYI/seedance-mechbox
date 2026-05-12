---
name: seedance-mechbox
description: Generate Seedance 2.0 mechanical box transformation prompts for zodiac, vehicle, and one-shot mecha-box scenes. Use when the user invokes /seedance-mechbox or asks for transforming vehicle box prompts.
---

# Seedance Mechbox

Follow `../../AGENTS.md` first in the source repository; after deployment, follow the mirrored `../_shared/AGENTS.md` if the root file is not present. This file is only the skill entrypoint and navigation guide; it must not redefine camera, audio, timeline, prompt-length, or transformation behavior.

## Scope

Use this skill for the trigger surface and theme described in the frontmatter `description`.

## References

- `references/generator-optimized.md`: default output contract and compact prompt template.
- `references/generator.md`: detailed mappings, target-selection rules, examples, and the fallback source when the user asks for a detailed or full version.
