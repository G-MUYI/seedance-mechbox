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

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Analyze the truck's structural features**:
   - What is the core form? (long-nose Peterbilt vs. cab-over Freightliner vs. classic Kenworth)
   - What are the signature components? (square grille, chrome bumper, exhaust stacks, cab, trailer hitch)
   - What is the natural deployment logic? (cab-trailer separation vs. telescoping nose vs. chassis unfolding)

2. **Reverse-engineer the mechanical box**:
   - Box shape must hint at the truck form (elongated, front-heavy)
   - Seam layout corresponds to key components (cab section, wheel wells, trailer connection)
   - Trigger mechanism echoes truck theme (steering wheel knob, chrome shifter)

3. **Design the transformation sequence**:
   - Each timestamp must reflect the truck's unique structural logic
   - NOT a generic 6-step template applied to all trucks
   - Example: Peterbilt 379 uses long-nose telescoping + cab lift; Freightliner uses cab-over flip + chassis extension

4. **Reference the mapping table** in `references/generator.md` for:
   - Truck archetypes (Peterbilt 379, Kenworth W900, etc.)
   - Era-specific details (1980s chrome vs. 1990s aerodynamics)
   - Highway culture elements (rivets, stripes, CB radio antennas)

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the truck model name, can a reader guess which truck it is from the transformation logic alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: generator rules, trigger, parameters, truck mapping,
  detailed specs, and output contract.
- `references/full-prompts-01-06.md`: expanded prompts for entries 01-06.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
