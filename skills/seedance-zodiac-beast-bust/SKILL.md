---
name: seedance-zodiac-beast-bust
description: Generate Seedance zodiac beast mecha bust and chest statue prompts. Use when the user invokes /seedance-zodiac-beast-bust or asks for a zodiac beast bust format.
---

# Seedance Zodiac Beast Bust

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
zodiac beast bust generator.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Analyze the zodiac beast bust's structural features**:
   - What is the core form? (bust = head + neck + chest + shoulders, mounted on base)
   - What are the signature components for this zodiac? (dragon horns vs. crab claws vs. lion mane)
   - What is the natural deployment logic? (base stabilizes → torso rises → shoulders expand → head/neck extends)

2. **Reverse-engineer the mechanical box**:
   - Box shape must hint at bust form (vertical cylinder or tapered block)
   - Seam layout corresponds to bust components (base, chest, shoulders, neck, head)
   - Trigger mechanism echoes zodiac theme

3. **Design the transformation sequence**:
   - Each timestamp must reflect the bust's unique structural logic
   - NOT a generic 6-step template applied to all zodiac busts
   - Example: Dragon bust uses neck telescoping + horn deployment; Crab bust uses shoulder-claw extension; Lion bust uses mane-petal expansion

4. **Reference the mapping table** in `references/generator.md` for:
   - Zodiac-specific bust features
   - Material shell variations
   - Pose and expression details

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the zodiac name, can a reader guess which beast it is from the bust transformation logic alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: `/seedance-zodiac-beast-bust` generator rules,
  mapping table, shell randomization, execution steps, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
