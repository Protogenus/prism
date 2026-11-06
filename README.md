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

Any agent that reads `AGENTS.md` can use PRISM without a plugin install: copy `AGENTS.md` into the project.

## How it works

1. Inspect the project: what it does, who uses it, what already works.
2. Classify the product and the screen.
3. Research real websites in the same field and inspect actual pages.
4. Extract the design conventions: common, strong, and opportunities.
5. Write a compact design brief before implementing.
6. Design and implement in the project's existing stack and conventions.
7. Review the result against the research and the brief.

## License

MIT
