---
name: seedance-country-mechbox
description: Generate Seedance mechanical box prompts that infer the final target object from a country, including vehicles, devices, and mechanical animals, with the country's flag palette and mechanically translated flag elements required on both the initial box and final target. Use when the user invokes /seedance-country-mechbox, /country-mechbox, or asks to reverse a country into a target object for a mechanical box transformation.
---

# Seedance Country Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
country-to-target mechanical box generator.

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
4. Parse the requested country, optional target override, and any explicit
   Seedance constraints.
5. Infer a concrete target object from the country using the reference mapping
   table. If the user asks for animals, infer a mechanical animal / mecha beast.
6. Derive the country's flag palette (2-3 colors) and one mechanically
   translatable flag element (star, sun, cross, stripes, etc.).
7. Apply the optimized template: embed flag colors in armor/frame contrast,
   place flag element in specific box and target positions.
8. Use explicit timeline structure: [0s] [2s] [4s] [6s] [8s] [10s],
   each timestamp describes only one main action and one main camera change.
9. Return the final prompt directly.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: country-to-target mapping, reverse-design rules,
  execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
