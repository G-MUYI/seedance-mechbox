---
name: seedance-country-mechbox
description: Generate Seedance mechanical box prompts that infer the final target object from a country, including vehicles, devices, and mechanical animals, with the country's flag palette and mechanically translated flag elements required on both the initial box and final target. Use when the user invokes /seedance-country-mechbox, /country-mechbox, or asks to reverse a country into a target object for a mechanical box transformation.
---

# Seedance Country Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
country-to-target mechanical box generator.

## Workflow

1. Read `references/generator-optimized.md` for the optimized prompt template
   (250-450 characters, follows seedance-prompt-research.md best practices).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the requested country, optional target override, and any explicit
   Seedance constraints.
4. Infer a concrete target object from the country using the reference mapping
   table. If the user asks for animals, infer a mechanical animal / mecha beast.
5. Derive the country's flag palette (2-3 colors) and one mechanically
   translatable flag element (star, sun, cross, stripes, etc.).
6. Apply the optimized template: embed flag colors in armor/frame contrast,
   place flag element in specific box and target positions.
7. Return the final prompt directly.

## References

- `references/generator.md`: country-to-target mapping, reverse-design rules,
  execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
