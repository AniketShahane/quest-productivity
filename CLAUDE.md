# Quest Productivity

A gamified to-do webapp that turns daily tasks into RPG-style quests with AI scheduling, implementation intentions, and a layered reward system (daily artifacts → weekly mosaics → monthly monuments).

## Principles

- Never hallucinate. Look it up with Exa search or ask the user.
- Answers must be concise, clear, verified, and reliable.
- Explain concepts in simple language with concrete examples.
- Always plan before implementing. Ask lots of questions if anything is unclear.
- Research thoroughly — use `web_search_exa` for docs/best practices and `get_code_context_exa` for code examples before writing code.
- Always consider and use relevant skills for each task. Check available skills before starting any work.

## Workflow

Follow the Superpowers lifecycle for all implementation work:

1. **Brainstorm** (`/brainstorming`) — Explore intent, ask questions, propose 2-3 approaches, get approval
2. **Plan** (`/writing-plans`) — Break into 2-5 min tasks with exact file paths and verification steps
3. **Implement** (`/subagent-driven-development`) — TDD per task, review after each. Use agent teams to parallelize independent tasks whenever possible.
4. **Verify** (`/verification-before-completion`) — Evidence before assertions, all tests must pass
5. **Ship** (`/finishing-a-development-branch`) — Final review, merge/PR decision

## Non-Negotiables

- No code before design approval
- No fixes without root cause investigation (`/systematic-debugging`)
- No production code without a failing test first
- All tests passing before merge/PR

## Commands

| Command | Description |
|---------|-------------|
| `TODO` | Add project-specific commands here |

## Gotchas

- Plans saved to `docs/plans/YYYY-MM-DD-<topic>.md`
- Exa MCP configured in `.mcp.json` — replace `YOUR_EXA_API_KEY` for higher rate limits
- Use `uv` for all Python package management, not `pip` or `pip3`
- **Code navigation:** Use Serena (`find_symbol`, `find_referencing_symbols`, `get_symbols_overview`) for semantic queries (callers, class structure, symbol bodies). Use Grep for quick text searches and non-code files.
