---
name: seedance-country-mechbox
description: Generate Seedance mechanical box prompts that infer the final target object from a country, including vehicles, devices, and mechanical animals. Use when the user invokes /seedance-country-mechbox, /country-mechbox, or asks to reverse a country into a target object for a mechanical box transformation.
---

# Seedance Country Mechbox

## Authority

Follow `../../AGENTS.md` first when available. This `SKILL.md` only routes the
country-to-target mechanical box generator.

## Workflow

1. Read `references/generator.md`.
2. Parse the requested country, region wording, audience context, optional target
   override, output length wording, and any explicit Seedance constraints.
3. Infer a concrete target object from the country using the reference mapping
   table and reverse-design workflow. If the user asks for animals, infer a
   mechanical animal / mecha beast rather than a live biological animal.
4. Return the final prompt directly. Always use the full detailed version; do
   not produce compact, short, compressed, summary, or outline prompt variants.
   Treat `--compact` and short version wording as deprecated.

## References

- `references/generator.md`: country-to-target mapping, reverse-design rules,
  execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
