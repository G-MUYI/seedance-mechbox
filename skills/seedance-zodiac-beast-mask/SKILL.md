---
name: seedance-zodiac-beast-mask
description: Generate Seedance zodiac beast mecha mask prompts. Use when the user invokes /seedance-zodiac-beast-mask or asks for a zodiac beast mask format.
---

# Seedance Zodiac Beast Mask

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast mask generator.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Analyze the zodiac beast mask's structural features**:
   - What is the core form? (mask = base support + mask frame + facial features + eye lenses)
   - What are the signature components for this zodiac? (dragon snout + horns vs. crab mandibles vs. lion muzzle + mane)
   - What is the natural deployment logic? (base stabilizes → frame expands → facial features deploy → eye lenses activate)

2. **Reverse-engineer the mechanical box**:
   - Box shape must hint at mask form (flat oval or facial contour shape)
   - Seam layout corresponds to mask components (base, frame edges, facial feature sections, eye positions)
   - Trigger mechanism echoes zodiac theme

3. **Design the transformation sequence**:
   - Each timestamp must reflect the mask's unique structural logic
   - NOT a generic 6-step template applied to all zodiac masks
   - Example: Dragon mask uses snout telescoping + horn deployment + scale pattern emergence; Crab mask uses mandible extension + eye-stalk deployment; Lion mask uses muzzle assembly + mane-frame radial expansion

4. **Reference the mapping table** in `references/generator.md` for:
   - Zodiac-specific mask features
   - Face structure variations
   - Eye lens details

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the zodiac name, can a reader guess which beast it is from the mask transformation logic alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: `/seedance-zodiac-beast-mask` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
