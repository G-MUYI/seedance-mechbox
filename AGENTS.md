# Seedance Skills Rules

This file is the authoritative rule source for every skill in this repository.
If this file conflicts with any `skills/*/SKILL.md`, `skills/*/references/*`, or
UI metadata file, follow this file first.

## Repository Shape

- Put installable skills in `skills/<skill-name>/`.
- Keep one top-level generator template or slash command as one installable
  skill. Do not collapse command-level templates into hidden variants.
- Keep each `SKILL.md` concise. It is an entrypoint, trigger surface, and
  navigation guide, not a full prompt library.
- Put detailed generator rules, mappings, examples, and expanded prompts in
  `skills/<skill-name>/references/`.
- Put cross-skill research and shared prompt-writing knowledge in
  `shared/references/`.
- Treat `agents/openai.yaml` as UI metadata only. It must not redefine skill
  behavior.

## Skill Runtime Workflow

1. Select the skill from the user's explicit command or requested theme.
2. Read this `AGENTS.md` before applying any detailed generator rule.
3. Read the selected skill's `references/generator.md` or the specific variant
   reference named by the user.
4. Load expanded prompt examples only when the user asks for examples, full
   prompt sets, or numbered prompt outputs.
5. Load `shared/references/seedance-prompt-research.md` only when prompt
   structure, quality diagnosis, or cross-skill optimization is needed.
6. Load `shared/references/completion-rules.md` when diagnosing or editing
   mechanical-box completion, duration, or ending-state consistency.

## Output Rules

- Default to Chinese explanations for Chinese user requests.
- Produce the final usable Seedance prompt or content output unless the user asks
  for analysis, planning, or editing guidance.
- Preserve the selected skill's output contract from its reference file.

### Prompt Length and Weight Allocation

Based on `shared/references/seedance-prompt-research.md`, Seedance 2.0 performs
best with **short, structured prompts in the 50-200 word sweet spot** (约 100-400
个中文字符). Longer prompts dilute the front half and scatter model attention.

**Weight allocation priority** (from research):
1. Reference asset job assignment (22%) - @Image/@Video/@Audio with clear roles
2. Task description: subject, action, scene (18%)
3. Camera & timeline structure (17%) - use [0s] [3s] [6s] format, 3-4 beats for 5-10s
4. Style & lighting (9%)
5. Context & background (8%)
6. Constraints (7%) - positive guardrails first, max 1-2 short negative items
7. Parameters (7%)

**Avoid over-investing in**:
- Detailed mechanical part descriptions (keep to 3-5 core visual elements)
- Long action semantics rules (1-2 sentences max)
- Dense negative constraint lists (use positive guardrails instead)
- Meta-rules that belong in generator logic, not final prompts

**Timeline format**: Use explicit timestamps `[0s] ... [3s] ... [6s] ...` with
one main action + one camera move per beat. For completion-critical tasks, also
preserve stage-based completion nodes from `completion-rules.md`.

**Common traps to avoid** (from research):
- Packing too many actions into a single beat
- Using vague adjectives (epic, beautiful) instead of camera/lighting terms
- Long prompts where the back half dilutes the front half

### Skill-Specific Rules

- Default to the selected skill's full output contract. Most skills output a
  detailed prompt, but `seedance-world-cup-mechbox` defines a core-skeleton
  full prompt: preserve its required camera, subject, timeline, mechanical,
  physical-continuity, and constraint sections without redundant expansion.
  Do not create ad hoc summaries outside the selected skill's reference file.
- Prefer concrete visual nouns, physical transformation beats, camera motion,
  material details, lighting, and environment cues over abstract adjectives.
- Keep one-shot mechanical transformation prompts coherent from opening state to
  final reveal.
- If user input is incomplete, choose reasonable defaults from the selected
  skill's mapping table and mention assumptions briefly.
- Do not duplicate long reference content in `SKILL.md`.

## Maintenance Rules

- New skill folder names must use lowercase letters, digits, and hyphens only.
- New skill frontmatter must contain only `name` and `description`.
- Long examples belong in `references/`, not in `SKILL.md`.
- Shared rules belong here first. Skill-specific exceptions belong in that
  skill's reference file.

## Skill Inventory

This repository currently contains ten installable skills:

- `seedance-mechbox`
- `seedance-american-truckbox`
- `seedance-tiktok-us-mechbox`
- `seedance-country-mechbox`
- `seedance-zodiac-beast`
- `seedance-zodiac-beast-bust`
- `seedance-zodiac-beast-crest`
- `seedance-zodiac-beast-diorama`
- `seedance-zodiac-beast-mask`
- `seedance-world-cup-mechbox`
