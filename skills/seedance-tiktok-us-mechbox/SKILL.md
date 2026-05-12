---
name: seedance-tiktok-us-mechbox
description: Generate US TikTok oriented Seedance mechanical box content and prompts, including 50 States Mech Box ideas. Use when the user invokes /tk-mechbox-us, asks for TikTok US mechanical box content, or needs state themed Seedance outputs.
---

# Seedance TikTok US Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the US
TikTok mechanical box content workflow.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Analyze the state-themed target object's structural features**:
   - What is the core form? (Texas oil rig truck vs. California beach patrol vehicle vs. Alaska snow crawler)
   - What are the signature components? (state-specific equipment, terrain adaptations, cultural elements)
   - What is the natural deployment logic? (based on the target vehicle/object type)

2. **Reverse-engineer the mechanical box**:
   - Box shape must hint at the target object form
   - Seam layout corresponds to key components
   - Trigger mechanism echoes state theme (Texas star button, California bear emblem)
   - State flag colors and symbols integrated into mechanical design (NOT as flat decals)

3. **Design the transformation sequence**:
   - Each timestamp must reflect the target object's unique structural logic
   - NOT a generic 6-step template applied to all states
   - Example: Texas oil rig uses vertical drilling tower extension; California lifeguard truck uses beach-ready wheel deployment + rescue equipment

4. **Reference the mapping table** in `references/generator.md` for:
   - State-to-target-object mappings
   - State flag colors and symbolic elements
   - State-specific cultural and geographical features

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the state name, can a reader guess which state it is from the transformation logic and visual elements alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: TikTok US content principles, parameters, series
  rules, and output structure.
- `references/states-full-prompts-01-05.md`: expanded 50 States Mech Box prompts
  for entries 01-05.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
