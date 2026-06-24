![MCPLabs.pro — Base MCP Discovery Hub](banner.jpg)

# MCPLabs — CLI & GitHub docs

This folder ships with the main [MCPLabsPro/MCPLabs](https://github.com/MCPLabsPro/MCPLabs) repository. It contains the **`mcplabs` CLI**, installer, and reference docs served from [mcplabs.pro/github/](https://mcplabs.pro/github/).

**Website:** [mcplabs.pro](https://mcplabs.pro) · **X:** [@MCPLabsPro](https://x.com/MCPLabsPro)

> MCPLabs is an independent community-built discovery and tooling layer for the Base MCP ecosystem. It is not affiliated with, endorsed by, or operated by Base.

## CLI install

One-line (recommended):

```bash
curl -fsSL https://mcplabs.pro/github/install.sh | bash
```

From the full repository:

```bash
git clone https://github.com/MCPLabsPro/MCPLabs.git
cd MCPLabs
bash github/install.sh
```

Commands: `start`, `login`, `me`, `directory`, `pricing`, `submit`, `balance`, `help`

## Docs

| File | Topic |
|------|--------|
| [docs/CLI.md](docs/CLI.md) | CLI install & usage |
| [docs/API.md](docs/API.md) | REST API reference |
| [docs/PRICING.md](docs/PRICING.md) | USDC pricing table |
| [docs/WEBSITE.md](docs/WEBSITE.md) | Public site pages |

## Website features (main repo)

- SEO-friendly PHP routing on shared hosting (cPanel / Rumahweb)
- Privy email login + dashboard with API key management
- Server-generated Base-compatible EVM wallet (encrypted, never shown in UI)
- REST API at `/r/api.php/v1/*`
- Directory, docs, tokenomics, badges, roadmap, Logo Studio
- Vanilla JS SPA navigation (History API)
- Project submit: web form, CLI, or API

## Setup (production website)

See [../SETUP.md](../SETUP.md) in the repository root.

1. Upload website files to `public_html`
2. Copy `core/secret.example.php` → `core/secret.php`
3. Configure DB + Privy in `core/secret.php` / `core/site.php`
4. Visit the site once — tables seed via `core/db.php`
5. Build and upload `j/v/privy.bundle.js` from `_build/`

## Security

See [SECURITY.md](SECURITY.md)

## License

MIT — see [LICENSE](LICENSE)
