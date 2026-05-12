---
name: seedance-zodiac-beast
description: Generate the main Seedance zodiac beast mecha transformation prompt. Use when the user invokes /seedance-zodiac-beast or needs the primary zodiac beast mechanical transformation output.
---

# Seedance Zodiac Beast

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
main zodiac beast generator.

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
4. Parse the zodiac sign, beast identity, tone, material shell, and any explicit
   Seedance constraints.
5. Apply the zodiac-beast section from the template: embed zodiac symbol and
   beast features into mechanical armor design.
6. Use explicit timeline structure: [0s] [2s] [4s] [6s] [8s] [10s],
   each timestamp describes only one main action and one main camera change.
7. Return the final prompt directly.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: main `/seedance-zodiac-beast` transformation
  generator.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
