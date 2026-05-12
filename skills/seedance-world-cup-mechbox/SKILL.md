---
name: seedance-world-cup-mechbox
description: Generate Seedance World Cup mechanical box prompts from country, team, player role, or football style. Use when the user invokes /seedance-world-cup-mechbox, /world-cup-mechbox, /football-mechbox, or asks for football-themed mechanical transformations.
---

# Seedance World Cup Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
World Cup football mechanical box generator.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Infer the target object from the country/team**:
   - Use `references/generator.md` mapping table or infer from football culture, playing style, national identity
   - Example: Brazil → samba-style agile striker mech; Germany → precision midfielder mech; Argentina → creative playmaker mech

2. **Analyze the target object's structural features**:
   - What is the core form? (humanoid player mech vs. football equipment vs. stadium element)
   - What are the signature components? (legs/boots, torso/jersey, arms, ball-handling mechanisms)
   - What is the natural deployment logic? (player stance assembly vs. equipment unfolding)

3. **Reverse-engineer the mechanical box**:
   - Box shape must hint at the target form (humanoid → vertical capsule; equipment → compact case)
   - Seam layout corresponds to key components (leg sections, torso, arms, head)
   - Trigger mechanism echoes football theme (football button, whistle knob, trophy emblem)
   - **National team integration** (CRITICAL):
     - Extract team colors from jersey → apply to armor/frame contrast
     - Translate jersey features (stripes, stars, crest) into mechanical elements (NOT as flat decals)

4. **Design the transformation sequence**:
   - Each timestamp must reflect the target's unique structural logic
   - NOT a generic 6-step template applied to all teams
   - Example: Brazilian striker uses agile leg deployment + samba-rhythm motion; German midfielder uses precision torso assembly + tactical stance

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the country/team name, can a reader guess which team it is from the colors, playing style, and mechanical design alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: World Cup country / figure cue mapping, selection
  rules, safety rewrites, execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
