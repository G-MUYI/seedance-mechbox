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

## Output Rules

- Default to Chinese explanations for Chinese user requests.
- Produce the final usable Seedance prompt or content output unless the user asks
  for analysis, planning, or editing guidance.
- Preserve the selected skill's output contract from its reference file.
- Always output the full detailed prompt. Do not generate compact, short,
  compressed, summary, or outline prompt variants, even if the user input
  contains `--compact`, "短版", "紧凑版", "压缩版", or similar wording. Treat
  those old switches as deprecated and continue with the full prompt structure.
- Final Seedance prompts must be long enough for direct use: keep all required
  sections, timeline beats, mechanical rules, material details, camera rules,
  physical continuity, and key constraints. Do not collapse them into a brief
  prompt or a bullet summary.
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

This repository currently contains nine installable skills:

- `seedance-mechbox`
- `seedance-american-truckbox`
- `seedance-tiktok-us-mechbox`
- `seedance-country-mechbox`
- `seedance-zodiac-beast`
- `seedance-zodiac-beast-bust`
- `seedance-zodiac-beast-crest`
- `seedance-zodiac-beast-diorama`
- `seedance-zodiac-beast-mask`
