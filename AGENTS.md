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
  `skills/_shared/`.
- Treat `agents/openai.yaml` as UI metadata only. It must not redefine skill
  behavior.

## Skill Runtime Workflow

### Core Principle: Reverse Engineering from Target Object

**DO NOT套用固定模板填空。** Instead, analyze the target object's structural features and reverse-engineer the mechanical box design.

1. Select the skill from the user's explicit command or requested theme.
2. Read this `AGENTS.md` before applying any detailed generator rule.
3. Read the selected skill's `SKILL.md` only for trigger scope and reference
   navigation. It must not redefine behavior from this file.
4. Resolve the **reference-image mode** before generating the final prompt:
   - If the user attaches images or explicitly requests a reference-image
     version, use the reference-image version and keep `@Image` role lines.
   - If the user explicitly requests no-image / text-only / 无图版, use the
     no-reference-image version, remove `@Image` role lines, and add one short
     `最终目标：...` appearance line.
   - If the user has not made the mode clear, ask one concise question before
     output: `是否使用参考图版？有图我会保留 @Image 角色行；无图我会删除 @Image 行并补最终目标外观特征。`
   - For batch outputs, ask once and apply the answer to the whole batch unless
     the user gives per-item modes.
5. **Analyze the target object first** (see "Reverse Engineering Process" below).
6. Read the selected skill's references for domain-specific mappings and output
   shape:
   - Use `references/generator.md` as the authoritative output contract,
     mapping source, target-selection rule source, and fallback behavior source.
   - Do not use or recreate separate short-version / optimized prompt templates.
   - If any reference file conflicts with this `AGENTS.md`, follow this file.
     In particular, any `@Image` requirement in a reference file applies only
     to reference-image mode.
7. Load expanded prompt examples only when the user asks for examples, full
   prompt sets, or numbered prompt outputs.
8. Load `skills/_shared/seedance-prompt-research.md` only when prompt
   structure, quality diagnosis, or cross-skill optimization is needed.
9. Load `skills/_shared/completion-rules.md` when diagnosing or editing
   mechanical-box completion, duration, or ending-state consistency.

### Reverse Engineering Process

Before generating any prompt, follow this analysis:

**Step 1: Analyze Target Object Structure**

Identify:
- **Overall form type**: elongated (dragon, truck) / spherical (crab, tank) / tall (giraffe, crane) / spreading (bird, plane) / multi-legged (spider, octopus)
- **Key components**: head/front, torso/body, limbs/supports, tail/rear, appendages (wings/antennae/equipment)
- **Movement/deployment logic**: serpentine (spine segments unlock sequentially) / enclosing (shell opens from center) / folding (wings unfold from storage) / telescoping (nested tubes extend) / assembly (parts converge from different directions)

**Step 2: Reverse-Engineer the Mechanical Box**

Design the initial box based on target features:
- **Box shape**: must hint at final form (elongated target → rectangular box with spine seams; spherical target → polyhedron shell with equator split)
- **Seam layout**: each key component corresponds to a source opening
- **Trigger mechanism**: thematically related to target (dragon → dragon-scale button; truck → steering wheel knob)
- **Front identification**: gear window pattern previews final form

**Step 3: Design Transformation Sequence**

**CRITICAL**: Transformation order must follow the target's structural logic, NOT a generic template.

Timeline design (6 keyframes):
- `[0s]` Trigger & drop - action echoes target theme
- `[2s]` Stage 1: Establish support/foundation (varies by form type)
- `[4s]` Stage 2: Main body takes shape (varies by form type)
- `[6s]` Stage 3: Key components deploy
- `[8s]` Stage 4: Detail refinement
- `[10s]` Stage 5: Lock and finalize - signature action (dragon tail whip / crab claw snap / truck horn)

**Form-Specific Transformation Patterns** (reference only, adapt to actual target):

| Form Type | Box Feature | Transformation Logic |
|-----------|-------------|---------------------|
| Elongated (dragon, snake, train, truck) | Rectangular with spine seams | Spine segments unlock in wave → supports deploy → head extends → tail finalizes |
| Spherical/Block (crab, turtle, tank) | Polyhedron shell, equator split or top petals | Shell/lid opens → support legs extend from sides → head/turret rises → claws/arms deploy |
| Tall (giraffe, crane, lighthouse) | Vertical cylinder, thick base | Base stabilizes first → body rises in telescoping sections → neck/arm extends segment by segment → head/top finalizes |
| Spreading (bird, plane, kite) | Flat box with side fold slots | Central axis/fuselage fixes → wings unfold from sides → head/nose extends → tail/tail feathers deploy last |
| Multi-legged (spider, octopus, multi-axle vehicle) | Central block + peripheral hatches | Legs extend in batches (symmetrical) → central body stabilizes → head/cockpit rises → tentacles/arms deploy sequentially |

**Step 4: Generate Complete Prompt**

Organize per Seedance 2.0 best practices, but with content derived from analysis, not template filling.

## Output Rules

- Default to Chinese explanations for Chinese user requests.
- Produce the final usable Seedance prompt or content output unless the user asks
  for analysis, planning, or editing guidance.
- Preserve the selected skill's output contract from its reference file.
- Support two prompt modes for every skill:
  - **参考图版**: include clear `@Image1`, `@Image2`, etc. role assignment
    lines only for assets the user actually provides or explicitly asks to use.
  - **无参考图版**: remove all unused `@Image` role lines and replace the lost
    visual guidance with one concise `最终目标：...` line describing the target's
    key silhouette, front/head feature, support/limb feature, and signature
    detail.
- Do not silently choose between 参考图版 and 无参考图版 when the user has not
  specified the mode. Ask first, then generate.

### Global Camera, Audio, and Text Rules

These rules apply to every skill and every generated Seedance prompt unless the
user explicitly requests a different shooting style:

- Use first-person real handheld POV with a one-shot / 一镜到底 feeling.
- Do not use a locked-off, static, tripod-like, or fixed-camera setup. Preserve
  small handheld breathing motion, wrist micro-shake, reactive collision shake,
  and subtle observational view corrections.
- Timestamps are action progress markers inside the same continuous shot, not
  edit points. Do not cut, switch angles, reset the camera, jump to a new
  product-display shot, or use montage language.
- Keep one main transformation action per beat. Camera language should describe
  natural handheld reaction or observation, not a new shot.
- Do not generate subtitles, captions, UI overlays, platform interface elements,
  or background music. Mechanical contact sounds are allowed only when they
  support the visible physical action.

### Prompt Length and Weight Allocation

Default to the selected skill's full output contract in `references/generator.md`.
Do not create, load, or output separate short-version prompt templates. If the
user or platform gives a hard character limit, reduce wording only from the full
contract and preserve the required structure, timeline, transformation logic,
material continuity, and key constraints.

**Weight allocation priority when a hard limit requires compression**:
1. Reference asset job assignment (22%) - @Image/@Video/@Audio with clear roles
2. Task description: subject, action, scene (18%)
3. Camera & timeline structure (17%) - preserve the selected skill's required timestamp beats
4. Style & lighting (9%)
5. Context & background (8%)
6. Constraints (7%) - positive guardrails first, max 1-2 necessary negative items
7. Parameters (7%)

**When compressing under a hard limit, avoid**:
- Removing required timeline stages or completion nodes
- Dropping physical source openings, mass continuity, or target identity anchors
- Dense negative constraint lists; use positive guardrails instead
- Meta-rules that belong in generator logic, not final prompts

**Timeline format**: Use explicit timestamps `[0s] ... [3s] ... [6s] ...` with
one main transformation action + one handheld reaction or observation cue per beat. For completion-critical tasks, also
preserve stage-based completion nodes from `completion-rules.md`.

**Common traps to avoid** (from research):
- Packing too many actions into a single beat
- Using vague adjectives (epic, beautiful) instead of camera/lighting terms
- Truncating the prompt so the final form, physical continuity, or ending state becomes ambiguous

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
