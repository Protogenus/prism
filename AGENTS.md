# PRISM — Project Research & Interface Synthesis Method

Research a project's purpose and industry before designing or changing its web interface. Never jump straight into implementation, invent generic SaaS layouts, or copy a reference website wholesale.

Full method: `skills/prism/SKILL.md`.

## Principles

- Understand the product before making visual decisions.
- Research real, relevant websites before choosing a design direction.
- Prefer established conventions when they improve usability; challenge them when the project has a clear reason.
- Treat references as evidence and inspiration, not templates to clone.
- Design for the end user. Do not expose internal names, implementation details, debug information, or system architecture unless genuinely useful to the user.
- Avoid decorative complexity, unnecessary panels, excessive borders, fake data, arbitrary charts, and generic dashboard patterns.
- Preserve working behavior and existing product identity unless the task calls for changing them.
- Be honest about research limitations. Never claim to have inspected a site, asset, or page you could not access.
- Keep the work proportional. Do not turn a small UI change into an unsolicited redesign.

## Workflow

1. **Inspect the project.** README, docs, design guidance, routes, pages, components, styles, tokens, assets, data models, workflows, screenshots or running app. Answer: what does it do, who is the primary user, what is their main task on this screen, what information do they need, what already works, what constrains the stack. Do not infer the product from folder names alone.
2. **Classify the product and screen.** Closest practical category (developer tool, consumer app, marketplace, game site, analytics, content platform, productivity, ecommerce) and screen type (landing, settings, editor, catalog, dashboard, gameplay). State the closest comparison and the important differences; do not force a category.
3. **Research relevant websites.** Real products in the same category, prioritized: direct competitors, respected products for the same audience, strong examples of the screen or interaction, adjacent products with useful patterns. Aim for 5-10 references when scope justifies it. Inspect actual pages, not snippets: hierarchy, navigation, density, typography, color, component patterns, empty/loading/error/populated states, responsive behavior, accessibility. Record URL, what was inspected, the useful decision, and relevance. Do not invent observations, ratings, or statistics. If browsing is unavailable, say so; do not fabricate references.
4. **Extract the design conventions.** Common conventions (repeated across references, likely expected), strong patterns (decisions that solve a problem particularly well), opportunities (where common approaches are weak or poorly suited). Frequency is not proof of quality.
5. **Create a compact design brief.** Product and audience summary, screen purpose and primary task, references and what each contributes, conventions to follow, patterns to avoid and why, proposed hierarchy, layout and interaction approach, accessibility and responsive considerations, existing constraints. Keep it short. Share it with the user before major irreversible changes on a substantial redesign.
6. **Design and implement.** In the project's existing stack and conventions. Reuse components and tokens. Make the primary task visually clear. Progressive disclosure for secondary information. Realistic content from project data, never invented data presented as real. Meaningful loading, empty, error, success, and disabled states. Responsive layouts, accessible contrast, focus, labels, keyboard behavior. No dependencies for cosmetic convenience. No unrelated features.
7. **Review against the research.** Run the app or inspect the page. Is the primary action obvious, the hierarchy right for the category, the density appropriate, nothing leaking implementation details, styles consistent, layout sound at relevant sizes, interactions behaving, existing functionality preserved? Fix the most consequential issues. Do not make arbitrary visual changes just to look different from the references.

## Scope control

Small component or isolated fix: inspect the relevant context, use targeted references only if they materially improve the result. Full website or major screen redesign: complete the full workflow. If the user says to skip research, follow that instruction.

## Definition of done

The interface fits the product and audience, uses a defensible design direction informed by relevant references, communicates the user's next actions clearly, respects the existing project, and has been reviewed at the level appropriate to the task.
