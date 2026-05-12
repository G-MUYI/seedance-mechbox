---
name: seedance-zodiac-beast-crest
description: Generate Seedance zodiac beast mecha crest shield prompts. Use when the user invokes /seedance-zodiac-beast-crest or asks for a zodiac beast crest or shield format.
---

# Seedance Zodiac Beast Crest

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast crest shield generator.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Analyze the zodiac beast crest's structural features**:
   - What is the core form? (crest shield = base + shield frame + beast relief emblem)
   - What are the signature components for this zodiac? (dragon relief vs. crab shell pattern vs. lion face)
   - What is the natural deployment logic? (base stabilizes → frame expands → relief layers deploy → emblem details emerge)

2. **Reverse-engineer the mechanical box**:
   - Box shape must hint at shield form (flat rectangular or heraldic shape)
   - Seam layout corresponds to shield components (base, frame edges, relief layers)
   - Trigger mechanism echoes zodiac theme

3. **Design the transformation sequence**:
   - Each timestamp must reflect the crest's unique structural logic
   - NOT a generic 6-step template applied to all zodiac crests
   - Example: Dragon crest uses layered relief deployment + scale pattern emergence; Crab crest uses shell-segment expansion; Lion crest uses mane-frame radial deployment

4. **Reference the mapping table** in `references/generator.md` for:
   - Zodiac-specific crest features
   - Shield structure variations
   - Relief emblem details

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the zodiac name, can a reader guess which beast it is from the crest transformation logic alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: `/seedance-zodiac-beast-crest` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
