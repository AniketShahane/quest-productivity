# Claude Code Template

A ready-to-clone template for new projects using Claude Code with pre-configured plugins, permissions, devcontainer, and Exa MCP search.

## What's Included

### Plugins (11)
| Plugin | Purpose |
|--------|---------|
| superpowers | Structured dev lifecycle (brainstorm -> plan -> implement -> verify) |
| claude-md-management | CLAUDE.md file management |
| claude-code-setup | Project setup automation |
| skill-creator | Create custom skills |
| hookify | Hook management |
| semgrep | Code security scanning |
| pyright-lsp | Python type checking |
| commit-commands | Git commit workflows |
| github | GitHub PR/issue integration |
| code-simplifier | Code cleanup and simplification |
| agent-sdk-dev | Agent SDK development |

### MCP Servers
- **Exa Search** — Web search, code search, company research, and page crawling

### DevContainer
- Node 20 + Python 3 + ripgrep + gh CLI + git-delta + zsh
- Network firewall (allowlist-only: GitHub, npm, Anthropic, Telegram, VS Code Marketplace)
- Auto-installs plugins on container creation

### Settings
- Bypass permissions mode enabled
- All plugins pre-enabled at project scope

## Quick Start

1. **Clone this template**
   ```bash
   git clone git@github.com:khoonidracula/claude-code-template.git my-project
   cd my-project
   ```

2. **Configure Exa API key** (optional, for higher rate limits)
   Edit `.mcp.json` and replace `YOUR_EXA_API_KEY` with your key from [dashboard.exa.ai](https://dashboard.exa.ai/api-keys).

3. **Customize `CLAUDE.md`**
   Fill in the project-specific sections (name, description, tech stack, conventions).

4. **Start working**
   ```bash
   claude
   ```

## DevContainer Usage

Open in VS Code with the Dev Containers extension, or use GitHub Codespaces. The container auto-configures everything including the network firewall and plugin installation.
