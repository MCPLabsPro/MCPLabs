# Contributing to MCPLabs

Thank you for helping improve the Base MCP discovery hub.

## Submit a Project

Three paths during beta:

1. **Website** — [mcplabs.pro/submit](https://mcplabs.pro/submit): form opens email to dev@mcplabs.pro or copy details
2. **CLI** — `mcplabs submit` (requires account + API key)
3. **API** — `POST /v1/submit` with Bearer token (see [docs/API.md](docs/API.md))

### Submission Guidelines

- Projects must relate to Base MCP, Base agents, or x402 tooling
- Do not submit malicious, deceptive, or key-harvesting tools
- Provide accurate capability descriptions (read-only vs wallet action)
- Experimental projects are welcome — label them honestly
- Include a public GitHub repository when possible
- Indicate applicable badges (Base MCP Ready, x402 Ready, etc.) — verified in Phase 2

## Improve the Directory

### Content Updates

Edit `core/data.php` in the website repo to add or update static directory listings. Each entry needs:

- `name`, `category`, `description`
- `badges` array
- `links` array with label, url, icon
- `status` (Live, Beta, Preview)

Database-backed listings come from API/CLI submissions.

### Code Changes

1. Fork [MCPLabsPro/MCPLabs](https://github.com/MCPLabsPro/MCPLabs)
2. Create a feature branch
3. Test locally or on a staging cPanel instance
4. Submit a pull request with a clear description

### Style Guidelines

- Keep copy professional and concise (English)
- Match existing CSS conventions in `/s/`
- Minify CSS/JS manually when editing asset files
- Respect `prefers-reduced-motion` for animations
- No framework dependencies on the website (PHP, CSS, vanilla JS only)

## Reporting Issues

Open a GitHub issue for bugs, incorrect listings, or general feedback. See [SECURITY.md](SECURITY.md) for vulnerability reporting.

## Code of Conduct

All contributors must follow our [Code of Conduct](CODE_OF_CONDUCT.md).
