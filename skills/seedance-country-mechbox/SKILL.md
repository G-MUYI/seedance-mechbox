---
name: seedance-country-mechbox
description: Generate Seedance mechanical box prompts that infer the final target object from a country, including vehicles, devices, and mechanical animals, with the country's flag palette and mechanically translated flag elements required on both the initial box and final target. Use when the user invokes /seedance-country-mechbox, /country-mechbox, or asks to reverse a country into a target object for a mechanical box transformation.
---

# Seedance Country Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
country-to-target mechanical box generator.

## Core Principles (based on seedance-prompt-research.md)

- Reference asset role assignment (22% weight) > Task description (18%) > Camera/time structure (17%)
- Each timestamp describes 1 main action + 1 main camera movement
- Prioritize positive guardrails, avoid excessive negative constraints

## Workflow

**CRITICAL: Follow the reverse-engineering approach from `../../AGENTS.md`, NOT template filling.**

1. **Infer the target object from the country**:
   - Use `references/generator.md` mapping table or infer from country's geography, industry, transportation culture
   - Example: Japan → Shinkansen inspection pod; Brazil → rainforest rescue hovercraft; Germany → Autobahn engineering GT car

2. **Analyze the target object's structural features**:
   - What is the core form? (elongated train vs. amphibious vehicle vs. compact sports car)
   - What are the signature components? (nose cone, pontoons, aerodynamic body)
   - What is the natural deployment logic? (telescoping vs. hull expansion vs. wing deployment)

3. **Reverse-engineer the mechanical box**:
   - Box shape must hint at the target object form
   - Seam layout corresponds to key components
   - Trigger mechanism echoes country/target theme
   - **Country flag integration** (CRITICAL):
     - Extract 2-3 main colors from flag → apply to armor/frame contrast
     - Extract 1 mechanically translatable flag element (star, sun, cross, stripes, etc.)
     - Place flag element in SPECIFIC positions on both box and target (NOT as flat decals)

4. **Design the transformation sequence**:
   - Each timestamp must reflect the target object's unique structural logic
   - NOT a generic 6-step template applied to all countries
   - Example: Japan Shinkansen uses nose-cone telescoping + precision alignment; Brazil hovercraft uses pontoon deployment + propeller extension

5. **Generate the complete prompt** following Seedance 2.0 best practices:
   - Use explicit timeline: [0s] [2s] [4s] [6s] [8s] [10s]
   - Each timestamp: one main action + one camera change
   - Derived from structural analysis, not template filling

6. **Validation check**:
   - If you remove the country name, can a reader guess which country it is from the flag colors, flag elements, and target object alone?
   - If NO → you're still template filling. Go back to step 1.

## Notes

- Prioritize positive guardrails ("maintain face consistency, steady camera")
- Avoid excessive negative constraints (research shows only 2% weight)

## References

- `references/generator.md`: country-to-target mapping, reverse-design rules,
  execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
