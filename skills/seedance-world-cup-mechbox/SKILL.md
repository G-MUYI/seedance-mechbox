---
name: seedance-world-cup-mechbox
description: Generate Seedance mechanical box prompts that infer the final target object from a World Cup country, national team, football style, football figure cue, or recognizable cartoon star-player avatar request. Use when the user invokes /seedance-world-cup-mechbox, /world-cup-mechbox, /football-mechbox, /wc-mechbox, or asks to reverse World Cup countries, national teams, real World Cup football stars, football legends, star-player cues, player roles, kits, match moments, football culture, or recognizable star-player-like cartoon mechanical figures into a mechanical box transformation target.
---

# Seedance World Cup Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
World Cup football mechanical box generator.

## Workflow

1. Read `references/generator-optimized.md` for the optimized prompt template
   (250-450 characters, follows seedance-prompt-research.md best practices).
2. If user explicitly requests "detailed version", "完整版", or "详细版",
   read `references/generator.md` instead.
3. Parse the requested country, national team, football figure cue, player role,
   match style, optional target override, and any explicit Seedance constraints.
4. Default to the country / national team path. Use recognizable star-player
   avatar mode only when the user explicitly asks for "像某位真实球员", "能看出是谁",
   "卡通球星", "Q版球员", or "球星人偶".
5. Infer a concrete football-compatible target object using the reference
   mapping table.
6. Apply the optimized template: embed national team colors in armor/frame
   contrast, translate jersey features into mechanical elements.
7. Return the final prompt directly.

## References

- `references/generator.md`: World Cup country / figure cue mapping, selection
  rules, safety rewrites, execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
