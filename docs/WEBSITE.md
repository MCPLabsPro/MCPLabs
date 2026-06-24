# MCPLabs Website Reference

Overview of public pages on [mcplabs.pro](https://mcplabs.pro).

**Repository:** [github.com/MCPLabsPro/MCPLabs](https://github.com/MCPLabsPro/MCPLabs) · **X:** [@MCPLabsPro](https://x.com/MCPLabsPro)

## Pages

| Path | Purpose |
|------|---------|
| `/` | Home — ecosystem overview, feature list, CTAs |
| `/directory` | Curated MCP / Base / x402 project listings with filter chips |
| `/learn` | Educational articles (Base MCP, x402, agent safety) |
| `/badges` | Badge definitions; Phase 2 review noted |
| `/roadmap` | Phased rollout (Directory → Review → Scanner → Marketplace) |
| `/submit` | Project submission (web email or CLI/API) |
| `/tokenomics` | $MCPLABS market panel, flow diagram, Dexscreener integration |
| `/docs` | Developer documentation (account, API, CLI, submit, security) |
| `/login` | Privy email authentication |
| `/dashboard` | API key, EVM address, usage log (authenticated) |
| `/logo-studio` | Private logo/canvas editor (key-gated) |

## Authentication

- **Privy** email login
- On first sign-in, Privy provisions an **embedded** Base-compatible EVM wallet linked to your account
- Wallet keys are managed by Privy — never shown in the MCPLabs dashboard
- Session via PHP HttpOnly cookies

## Directory filters

Filter chips (All, MCP Tools, Agents, x402, Experiments) filter listings client-side by category and badge metadata. Database submissions and static seed data both support filtering.

## Submission flows

1. **Web form** — mailto to `dev@mcplabs.pro` or copy to clipboard
2. **CLI** — `mcplabs submit` → `POST /v1/submit`
3. **API** — direct POST with Bearer token

CLI/API submissions get status **Preview** until Phase 2 manual review.

## Badges

Badges on directory cards may be illustrative during Phase 1. Phase 2 adds verified compatibility review. See `/badges` for definitions.

## Contact

- Dev: dev@mcplabs.pro
- Support: support@mcplabs.pro
- GitHub: [MCPLabsPro/MCPLabs](https://github.com/MCPLabsPro/MCPLabs)
- X: [@MCPLabsPro](https://x.com/MCPLabsPro)

## Stack

- PHP 8+ / MySQL / vanilla JS
- Shared hosting (cPanel) with `.htaccess` route rules
- SPA partial loads via `route.php` + History API
- Privy bundle built from `_build/` (not committed as source on server)

## Deployment

See the main project [SETUP.md](../../SETUP.md) and [README.md](../../README.md).
