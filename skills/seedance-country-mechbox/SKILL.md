---
name: seedance-country-mechbox
description: Generate Seedance mechanical box prompts that infer the final target object from a country, including vehicles, devices, and mechanical animals, with the country's flag palette and mechanically translated flag elements required on both the initial box and final target. Use when the user invokes /seedance-country-mechbox, /country-mechbox, or asks to reverse a country into a target object for a mechanical box transformation.
---

# Seedance Country Mechbox

Follow `../../AGENTS.md` first in the source repository; after deployment, follow the mirrored `../_shared/AGENTS.md` if the root file is not present. This file is only the skill entrypoint and navigation guide; it must not redefine camera, audio, timeline, prompt-length, or transformation behavior.

## Scope

Use this skill for the trigger surface and theme described in the frontmatter `description`.

## References

- `references/generator.md`: full output contract, detailed mappings, target-selection rules, examples, and fallback behavior.
