# PRISM

PRISM (Project Research & Interface Synthesis Method) is a skill for AI coding agents: research a project's purpose and industry before designing or changing its web interface.

## Install

### Muse

```bash
git clone https://github.com/Protogenus/prism.git
cp -r prism/skills/prism ~/workspace/custom-skills/prism
```

### Claude Code

```
/plugin marketplace add Protogenus/prism
```

```
/plugin install prism@prism
```

Send the two commands as separate prompts.

### Codex

```bash
codex plugin marketplace add Protogenus/prism
codex plugin add prism@prism
```

Any agent that reads `AGENTS.md` can use PRISM without a plugin install: copy `AGENTS.md` into the project. It contains the full method and is generated from `skills/prism/SKILL.md`.

## Try it

Example prompts:

- "Redesign the landing page using PRISM."
- "Research this project and its industry, then design the settings screen."
- "Use PRISM before you change the dashboard."

For small fixes PRISM stays out of the way. Say "skip research" at any time and it will.

## How it works

1. Inspect the project: what it does, who uses it, what already works. For a major screen, it also asks which sites you like and whether a brand or design system applies.
2. Classify the product and the screen.
3. Research real websites in the same field and inspect actual pages. Visual claims come only from rendered pages or screenshots, and anything it could not access is reported as such.
4. Extract the design conventions: common, strong, and opportunities.
5. Write a compact design brief (about 300 words) before implementing, including the one distinctive move that makes the design specific to this product.
6. Design and implement in the project's existing stack and conventions. If a design-craft skill such as `frontend-design` is installed, PRISM hands the brief to it.
7. Review the result against the research and the brief, including checks at mobile, tablet and desktop widths, keyboard focus, and contrast.

### Sample brief

```
Product: Open-source CLI for database migrations. Audience: backend engineers.
Screen: documentation home. Task: find install and first-migration steps in under 30 seconds.
References: Stripe docs (search-first layout), Prisma docs (tabbed quickstart), Rails Guides (plain reading flow).
Follow: left nav by task, persistent search, copyable code blocks.
Avoid: marketing hero with no code, stock illustrations, carousel of features.
Hierarchy: install command > quickstart > concepts > reference.
Layout: single reading column with sticky nav; code above explanation.
Distinctive move: every example shows the real before/after schema diff, since migrations are about change.
Constraints: existing Astro site and tokens; keep current URLs.
```

## Keeping AGENTS.md in sync

`AGENTS.md` is generated. After editing `skills/prism/SKILL.md`, run:

```bash
scripts/sync-agents.sh          # regenerate
scripts/sync-agents.sh --check  # exit 1 if out of date (useful in CI)
```

## License

MIT
