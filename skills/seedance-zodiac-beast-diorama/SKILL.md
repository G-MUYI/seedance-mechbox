---
name: seedance-zodiac-beast-diorama
description: Generate Seedance zodiac beast mecha miniature diorama prompts. Use when the user invokes /seedance-zodiac-beast-diorama or asks for a zodiac beast miniature display format.
---

# Seedance Zodiac Beast Diorama

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast miniature diorama generator.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Analyze the zodiac beast diorama's structural features**:
   - What is the core form? (diorama = scene base + frame + beast figure + environment elements)
   - What are the signature components for this zodiac? (dragon in mountain scene vs. crab in tide pool vs. lion on savanna)
   - What is the natural deployment logic? (base expands → frame rises → beast assembles → environment details deploy)

2. **Reverse-engineer the mechanical box**:
   - Box shape must hint at diorama form (flat base with vertical frame potential)
   - Seam layout corresponds to diorama components (base sections, frame edges, beast parts, environment pieces)
   - Trigger mechanism echoes zodiac theme

3. **Design the transformation sequence**:
   - Each timestamp must reflect the diorama's unique structural logic
   - NOT a generic 6-step template applied to all zodiac dioramas
   - Example: Dragon diorama uses mountain base rising + dragon figure assembly + cloud elements; Crab diorama uses tide pool base + crab figure + rock formations; Lion diorama uses savanna base + lion figure + grass tufts

4. **Reference the mapping table** in `references/generator.md` for:
   - Zodiac-specific diorama scenes
   - Scale and material variations
   - Environment detail elements

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the zodiac name, can a reader guess which beast it is from the diorama transformation logic alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: `/seedance-zodiac-beast-diorama` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
