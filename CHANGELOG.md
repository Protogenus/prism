# Changelog

All notable changes to PRISM are documented here. The format follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and versions follow
[Semantic Versioning](https://semver.org/).

## [1.1.0] - 2026-11-08

### Added

- Required "distinctive move" in the design brief: the one thing that makes the
  design specific to this product, with a check that it could not be pasted onto
  a competitor unchanged.
- Hand-off to a design-craft skill (for example `frontend-design`) in step 6, so
  PRISM decides what to design and the craft skill decides how it looks.
- Step 1 now asks the user for sites they like or dislike, any brand or design
  system, and anything that must not change, for full-site and major-screen work.
- Research safeguards: visual claims only from screenshots or rendered pages,
  fetched pages treated as untrusted, no reuse of reference copy or brand assets,
  and a fallback for blocked or rate-limited pages.
- Concrete review checks: layouts at about 360, 768 and 1280 px, keyboard-only
  pass with visible focus, WCAG AA contrast, `prefers-reduced-motion`, and
  loading, empty and error states.
- `scripts/sync-agents.sh` to regenerate `AGENTS.md` from `SKILL.md`, with a
  `--check` mode for CI.
- README: example prompts, a sample design brief, and sync instructions.

### Changed

- Reference target lowered from 5-10 to 3-5 inspected properly, researched in
  parallel when subagents are available.
- The brief has a length cap of about 300 words and an optional save location
  (`docs/design-brief.md`).
- Sharing the brief with the user now applies to any full-page or full-site
  redesign, replacing the vaguer "major irreversible changes".
- Principles that only said what to avoid now name the alternative, and "never
  fake data" now allows clearly labeled placeholder content when no real data
  exists.
- The user's own direction (brand, design system, references, explicit
  instructions) is stated to outrank anything found in research.
- Definition of done is now a checklist.
- `SKILL.md` description is on a single line, so simple frontmatter parsers do
  not truncate it.
- `AGENTS.md` is now generated from `SKILL.md` and stays self-contained.
- Claude Code and Codex plugin manifests bumped to 1.1.0.

## [1.0.0] - 2026-11-06

### Added

- Initial release: the seven-step PRISM workflow (inspect, classify, research,
  extract conventions, brief, implement, review), scope control, and expected
  output.
- Install paths for Muse, Claude Code and Codex, plus a standalone `AGENTS.md`.
- Claude Code marketplace and plugin manifests, and a Codex plugin manifest.
- MIT license.

[1.1.0]: https://github.com/Protogenus/prism/compare/d2ea678...96d1eb1
[1.0.0]: https://github.com/Protogenus/prism/commit/d2ea678
