---
name: seedance-mechbox
description: Generate Seedance 2.0 mechanical box transformation prompts for zodiac, vehicle, and one-shot mecha-box scenes. Use when the user invokes /seedance-mechbox or asks for transforming vehicle box prompts.
---

# Seedance Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` is only the entry
guide for the general mechanical box generator.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Analyze the target object's structural features**:
   - What is the core form? (elongated vehicle vs. compact machine vs. tall structure)
   - What are the signature components? (wheels, chassis, cabin, exhaust, cargo area)
   - What is the natural deployment logic? (telescoping vs. folding vs. segment unlocking)

2. **Reverse-engineer the mechanical box**:
   - Box shape must hint at the final object form
   - Seam layout corresponds to key components
   - Trigger mechanism echoes the object theme

3. **Design the transformation sequence**:
   - Each timestamp must reflect the object's unique structural logic
   - NOT a generic 6-step template applied to all targets
   - Example: Truck uses front-rear segment separation; Train uses spine-car chain extension

4. **Reference the mapping table** in `references/generator.md` for:
   - Vehicle/object archetypes and specifications
   - Material and color palettes
   - Thematic details (era, location, purpose)

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the object name, can a reader guess what it is from the transformation logic alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: complete generator rules, parameters, zodiac and
  vehicle mapping, execution steps, and output format.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
