# Project Name

<!-- One-line description -->

## Commands

- `just setup` — install deps and hooks
- `just check` — lint + typecheck + test (run before every PR)
- `just fix` — auto-fix lint/format issues

## Architecture

<!-- Key directories and what they do. Keep under 6 bullets. -->
<!-- Example: -->
<!-- - `src/core/` — Main application logic -->
<!-- - `src/api/` — API endpoints -->
<!-- - `tests/` — Test suite -->

## Conventions

### How to make changes
1. Create a branch from main
2. Make the smallest possible change that works
3. Write tests that fail if you revert your change
4. Run `just check` — everything must pass
5. Commit atomically: implementation + tests + docs together
6. Open a PR with a clear description of what and why

### Principles
- **Scope small.** Do only what was asked. Don't refactor adjacent code, add unsolicited comments, or "improve" things while you're nearby.
- **Prove it works.** Every change must be accompanied by evidence it works — a passing test, a screenshot, a terminal output.
- **Ask before assuming.** If the task is ambiguous, surface the ambiguity. Present options. Don't silently pick one interpretation.
- **Push back on complexity.** If a simpler approach exists, say so. Three similar lines are better than a premature abstraction.
- **Don't touch what you weren't asked to touch.** No drive-by refactors, no unsolicited docstrings, no "while I'm here" cleanups.
- **Tests ship with code.** Features ship with tests. Bug fixes start with a failing test. Trivial changes (typos, config) are exempt.
- **Atomic commits.** Each commit = one logical change + its tests + any doc updates. Every commit leaves main deployable.

### What NOT to do
- Don't add error handling for impossible scenarios
- Don't create abstractions for one-time operations
- Don't add features that weren't requested
- Don't skip `just check` before committing
- Don't commit secrets, .env files, or credentials

## Stack
- Package manager: uv
- Linter + formatter: ruff
- Type checker: pyright
- Tests: pytest + hypothesis
- CI: GitHub Actions
- Git hooks: lefthook
- Issue tracking: Linear

## Logging
- Use structured logging (key-value pairs)
- Log at system boundaries: requests in, responses out, external calls, state changes
- Never log secrets or PII
- Use standard log levels: DEBUG < INFO < WARNING < ERROR < CRITICAL
- Configure log level via environment variable

## Testing
- Every feature ships with tests
- Bug fixes start with a failing test
- Use pytest + hypothesis for property-based tests
- Mock external APIs (speed, reliability, cost)
- Aim for 80% coverage minimum
- Trivial changes (typos, config) are exempt from test requirement

## Domain

<!-- Project-specific jargon, acronyms, business rules. Only add what an outsider wouldn't know. -->
