# Planning

High-level direction, priorities, and open questions. Update
this when the project's focus shifts or after significant
milestones.

## Current priorities

1. **Flesh out the derivation** — Expand Christoffel and Ricci
   sections to show every step, per `scroll.md`. This is the
   core pedagogical value of the document.
2. **Complete exercise solutions** — All 20 exercises need
   full solutions in the appendix.

## Open questions

- Should the document include the interior Schwarzschild solution
  (for a constant-density star) or stay focused on the exterior?
- Should we add a section comparing Schwarzschild's original 1916
  paper with the modern Hilbert-form notation?

## Recent decisions

- **2026-05-08**: Single PDF, xelatex, make-based build. 20
  mixed exercises at advanced undergraduate level. Named Karl
  (title #1 in AGENTS.md).

- **2026-05-08**: Project management lives in `.development/`
  using the `self-host-development-light` convention from
  `doolin/dave-skills`. No Jira, no external ticketing.

- **2026-05-08**: Adopted scroll.md as the project conscience.
  All derivations must be self-contained; no skipped steps.
