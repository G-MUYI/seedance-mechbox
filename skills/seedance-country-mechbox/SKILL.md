---
name: seedance-country-mechbox
description: Generate Seedance mechanical box prompts that infer the final target object from a country, including vehicles, devices, and mechanical animals, with the country's flag palette and mechanically translated flag elements required on both the initial box and final target. Use when the user invokes /seedance-country-mechbox, /country-mechbox, or asks to reverse a country into a target object for a mechanical box transformation.
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
4. Derive the country's flag palette and recognizable flag elements. The
   initial mechanical box and final target object must both carry the same
   flag-inspired design logic, with separate concrete placement surfaces for
   each stage. Make the flag identity visually readable in the prompt: the
   box and the final target each need visible flag-color armor areas plus a
   mechanically translated flag element on a clear front, top, side, head,
   hull, wheel-skirt, wing-root, or lens surface. Translate the elements into
   mechanical paint layers, engraved lines, narrow light strips, relief parts,
   panel seams, lens details, or functional armor geometry. Do not output a
   literal flag sticker, full flat flag wrap, or exact official emblem.
5. Run a final lexical safety pass: replace high-risk real-world identity,
   organization-mark, real-conflict, and aggressive-equipment
   wording with neutral mechanical structure, material, industrial nameplate,
   and regional-environment descriptions.
6. Run a final flag-visibility pass: if the first 1.8 seconds would not show
   the box's flag palette and element, or the final 1.2 seconds would not show
   the target object's flag palette and element, strengthen the prompt before
   returning it.
7. Return the final prompt directly. Always use the full detailed version; do
   not produce compact, short, compressed, summary, or outline prompt variants.
   Treat `--compact` and short version wording as deprecated.

## References

- `references/generator.md`: country-to-target mapping, reverse-design rules,
  execution steps, prompt template, and output contract.
- `../../shared/references/seedance-prompt-research.md`: load only for prompt
  architecture review, optimization, or cross-skill consistency work.
