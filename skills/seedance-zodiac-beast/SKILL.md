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

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Analyze the zodiac beast's structural features**:
   - What is the core form? (elongated dragon vs. spherical crab vs. spreading bird)
   - What are the signature components? (horns, claws, wings, shell, tail)
   - What is the natural deployment logic? (serpentine unfolding vs. shell opening vs. wing spreading)

2. **Reverse-engineer the mechanical box**:
   - Box shape must hint at the final beast form
   - Seam layout corresponds to key components
   - Trigger mechanism echoes the zodiac theme

3. **Design the transformation sequence**:
   - Each timestamp must reflect the beast's unique structural logic
   - NOT a generic 6-step template applied to all zodiacs
   - Example: Dragon uses spine-segment wave unlock; Crab uses shell-petal opening; Scorpion uses tail-segment chain extension

4. **Reference the mapping table** in `references/generator.md` for:
   - Zodiac symbolism and color palette
   - Signature mechanical sounds
   - Thematic details (constellation symbols, mythological references)

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the zodiac name, can a reader guess which beast it is from the transformation logic alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: main `/seedance-zodiac-beast` transformation
  generator.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
