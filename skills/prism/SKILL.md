---
description: PRISM (Project Research & Interface Synthesis Method).
  Researches a project's purpose and industry before designing or
  changing its web interface. Use when creating, redesigning, or
  substantially improving a website or web application UI.
name: prism
---

# PRISM — Project Research & Interface Synthesis Method

## Purpose

Produce interfaces that fit the actual product, audience, and industry.
Do not jump straight into implementation, invent generic SaaS layouts,
or copy a reference website wholesale.

This skill defines the process. Use available project tools and
browser/search tools when present. Do not assume a particular MCP is
installed.

## Operating principles

-   Understand the product before making visual decisions.
-   Research real, relevant websites before choosing a design direction.
-   Prefer established conventions when they improve usability;
    challenge them when the project has a clear reason.
-   Treat references as evidence and inspiration, not templates to
    clone.
-   Design for the end user. Do not expose internal variable names,
    implementation details, debug information, or system architecture
    unless they are genuinely useful to the user.
-   Avoid decorative complexity, unnecessary panels, excessive borders,
    fake data, arbitrary charts, and generic dashboard patterns.
-   Preserve working behavior and existing product identity unless the
    task calls for changing them.
-   Be honest about research limitations. Never claim to have inspected
    a site, asset, or page that you could not access.
-   Keep the work proportional. Do not turn a small UI change into an
    unsolicited redesign.

## Workflow

### 1. Inspect the project

Before proposing or changing the interface, inspect the relevant project
context:

-   README, product documentation, and existing design guidance
-   package configuration and framework, where relevant
-   routes, pages, layouts, and navigation
-   existing components, styles, design tokens, and assets
-   relevant data models and user-facing workflows
-   current screenshots or running application, if available

Answer these questions:

1.  What does this product do?
2.  Who is the primary user?
3.  What is the user's main task on the relevant screen?
4.  What information does the user need to make decisions?
5.  What is already working and should be preserved?
6.  What constraints come from the current stack or product?

Do not infer the product solely from folder names or code identifiers.
If important context is missing, inspect further. Ask the user only when
a consequential ambiguity cannot be resolved from the project.

### 2. Classify the product and screen

Identify the closest practical category and subcategory, such as:

-   developer tool, IDE, API platform, or technical documentation
-   consumer web app or social product
-   marketplace, directory, or booking service
-   game website, game client interface, or community portal
-   analytics or data exploration product
-   content, publishing, or media platform
-   productivity or collaboration application
-   ecommerce or service website

Classify the specific screen too. A landing page, settings page, editor,
catalog, dashboard, and gameplay interface have different design needs.

Do not force a category if the product genuinely combines several. State
the closest useful comparison and the important differences.

### 3. Research relevant websites

Use browser/search capabilities if available. Search for real products
in the same category, prioritizing:

1.  Direct competitors or close product equivalents
2.  Respected products serving the same audience
3.  Strong examples of the particular screen or interaction being
    designed
4.  Adjacent products with useful interaction patterns

Aim for 5--10 useful references when the scope justifies it. For a small
change, fewer references are sufficient.

Inspect actual pages when possible, not just search-result snippets or
marketing descriptions. Look at:

-   information hierarchy and page composition
-   navigation and information architecture
-   density, spacing, and alignment
-   typography and readability
-   color usage and contrast
-   component patterns and interaction behavior
-   empty, loading, error, and populated states
-   responsive behavior, where relevant
-   accessibility and keyboard interaction, where observable

For each reference, record the URL, what was actually inspected, the
useful design decision, and whether it is relevant to this project.

Do not invent observations, ratings, popularity claims, or industry
statistics. Distinguish direct observation from inference. If browsing
is unavailable, say so and base the work on project evidence and
established design knowledge; do not fabricate references.

### 4. Extract the design conventions

Separate findings into three groups:

**Common conventions** Patterns repeatedly seen across relevant
references and likely expected by users.

**Strong patterns** Specific decisions that solve a usability or
communication problem particularly well.

**Opportunities** Places where common approaches are weak, cluttered,
confusing, or poorly suited to this product.

Do not treat frequency as proof of quality. A pattern appearing on many
sites may simply be conventional.

### 5. Create a compact design brief

Before implementation, produce a short brief containing:

-   Product and audience summary
-   Screen purpose and primary user task
-   Reference sites and what each contributes
-   Relevant conventions to follow
-   Patterns to avoid and why
-   Proposed information hierarchy
-   Proposed layout and interaction approach
-   Accessibility and responsive considerations
-   Existing project constraints

Keep the brief concise and specific. Do not produce a long design essay.

If the task is a substantial redesign, share the brief with the user
before making major irreversible changes. For routine implementation
tasks, the brief can remain internal unless the user asks to see it.

### 6. Design and implement

Implement the design in the project's existing stack and conventions
unless there is a clear, approved reason to change them.

-   Reuse existing components and tokens where appropriate.
-   Establish consistent spacing, typography, color, and component
    behavior.
-   Make the primary task visually clear.
-   Use progressive disclosure for secondary or advanced information.
-   Show only information that helps users understand or act.
-   Use realistic content based on project data. Never present invented
    data as real.
-   Include meaningful loading, empty, error, success, and disabled
    states when relevant.
-   Ensure responsive layouts and accessible contrast, focus, labels,
    and keyboard behavior.
-   Avoid adding dependencies for cosmetic convenience.
-   Do not introduce unrelated features or rewrite unrelated parts of
    the application.

### 7. Review against the research

Run the application or inspect the resulting page when possible. Compare
it with the brief and references.

Check:

-   Can the intended user understand the page quickly?
-   Is the primary action or information obvious?
-   Is the hierarchy appropriate for this product category?
-   Is the interface too dense, too sparse, or unnecessarily
    complicated?
-   Are internal implementation details leaking into the user
    experience?
-   Are spacing, alignment, typography, and component styles consistent?
-   Does the layout work at relevant screen sizes?
-   Do interactive elements behave as expected?
-   Did the implementation preserve existing functionality?

Fix the most consequential issues. Do not make arbitrary visual changes
just to appear different from the references.

## Scope control

For a small component or isolated bug fix, inspect the relevant context
and use targeted references only if they materially improve the result.
Do not trigger the entire research process for every minor CSS
adjustment.

For a full website or major screen redesign, complete the full workflow.

If the user explicitly says to skip research, follow that instruction.

## Expected output

For substantial design work, provide a concise summary:

1.  Project understanding
2.  Research references used
3.  Design decisions and rationale
4.  What changed
5.  Any limitations or unresolved questions

For small changes, simply implement the change and summarize it briefly.

## Definition of done

The interface is complete when it fits the product and audience, uses a
defensible design direction informed by relevant references,
communicates the user's next actions clearly, respects the existing
project, and has been reviewed at the level appropriate to the task.
