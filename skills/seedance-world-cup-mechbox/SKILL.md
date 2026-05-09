---
name: seedance-world-cup-mechbox
description: Generate Seedance mechanical box prompts that infer the final target object from a World Cup country, national team, football style, football figure cue, or recognizable cartoon star-player avatar request. Use when the user invokes /seedance-world-cup-mechbox, /world-cup-mechbox, /football-mechbox, /wc-mechbox, or asks to reverse World Cup countries, national teams, real World Cup football stars, football legends, star-player cues, player roles, kits, match moments, football culture, or recognizable star-player-like cartoon mechanical figures into a mechanical box transformation target.
---

# Seedance World Cup Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
World Cup football mechanical box generator.

## Workflow

1. Read `references/generator.md`.
2. Parse the requested country, national team, football figure cue, player role,
   match style, optional target override, output length wording, and any explicit
   Seedance constraints.
3. Default to the country / national team path when the user provides both a
   country and a person, unless the user explicitly asks for a star-player-like
   cartoon figure, footballer avatar, mascot, Q-version figure, or character
   shape. In that case, use recognizable star-player avatar mode: make the
   final target a stylized cartoon mechanical footballer figure that can be
   read as the requested real World Cup player through caricature-level facial
   proportions, real hairstyle / beard cues when relevant, role, pose, national
   team palette, recognizable jersey construction cues, the player's real
   national-team number as mechanical number plates, boot / ball / glove
   modules, and signature movement rhythm. Do not make it photorealistic,
   documentary, deceptive, endorsed, or an exact crest / sponsor / manufacturer
   mark recreation.
4. Infer a concrete football-compatible target object using the reference
   mapping table and reverse-design workflow. Keep the final object mechanical:
   tournament rover, match-ball core, goal module, keeper shield pod, wing
   sprint drone, pitch-maintenance vehicle, stadium-light rig, cartoon
   mechanical star-player avatar, or collectible mechanical animal /
   mascot-like construct.
5. Translate national palette, real kit color blocking, collar / sleeve trim,
   player number, football symbols, and match cues into mechanical paint layers,
   engraved lines, narrow light strips, relief panels, panel seams, lens forms,
   pitch-line geometry, net-frame structures, or functional armor shapes. Do not
   output literal flags, team crests, official emblems, sponsor marks,
   manufacturer logos, photoreal player portraits, or flat sticker graphics.
6. Return the final prompt directly using the core-skeleton full prompt contract
   in `references/generator.md`: keep the required first-person handheld camera,
   subject, football translation, timeline, mechanical physics, and constraints,
   but avoid redundant expansion that weakens the front half of the prompt.

## References

- `references/generator.md`: World Cup country / figure cue mapping, selection
  rules, safety rewrites, execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
