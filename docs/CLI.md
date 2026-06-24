# MCPLabs CLI

Command-line interface for the MCPLabs discovery hub API.

## Install

The CLI is a **bash** script. Supported environments:

| Platform | CLI | Notes |
|----------|-----|-------|
| macOS | Yes | Terminal / iTerm — default install |
| Linux | Yes | Any distro with `bash` + `curl` |
| Windows | WSL2 or Git Bash | Same install command; not native CMD/PowerShell |
| iOS / Android | No | Use [dashboard](https://mcplabs.pro/dashboard) + REST API |

### macOS & Linux

```bash
curl -fsSL https://mcplabs.pro/github/install.sh | bash
```

Or from this repository:

```bash
git clone https://github.com/MCPLabsPro/MCPLabs.git
cd MCPLabs
bash github/install.sh
```

Install path: `~/.local/bin/mcplabs` — add to PATH if prompted.

### Windows (WSL2 / Git Bash)

Open **WSL** or **Git Bash**, then run the same one-line install:

```bash
curl -fsSL https://mcplabs.pro/github/install.sh | bash
```

For HTTP-only usage from PowerShell, set env vars and use `curl.exe` — see [website docs](https://mcplabs.pro/docs#cli).

## Quick start

1. Create an account at [mcplabs.pro/login](https://mcplabs.pro/login)
2. Copy your API key from the dashboard (shown once)
3. Run:

```bash
mcplabs start
mcplabs me
```

## Configuration

API key is stored in `~/.mcplabs/config` with restrictive permissions when supported.

```bash
MCPLABS_API_KEY="mcplabs_hash_..."
MCPLABS_API_BASE="https://mcplabs.pro/r/api.php"
```

## Commands

| Command | Description | USDC |
|---------|-------------|------|
| `mcplabs start` | Save API key + test connection | Local only |
| `mcplabs login` | Update stored API key | Local only |
| `mcplabs me` | Account profile | 0.001 |
| `mcplabs directory` | List projects | 0.001 |
| `mcplabs pricing` | Pricing table | 0.001 |
| `mcplabs submit` | Submit project to database | 0.001 |
| `mcplabs balance` | Cached USDC balance | 0.001 |
| `mcplabs help` | Help output | Local only |

Minimum API charge: **0.001 USDC** per billed call.

## Security

- Never commit your API key
- Regenerate from the dashboard if exposed
- See [SECURITY.md](../SECURITY.md)

## Links

- Website: https://mcplabs.pro
- Docs: https://mcplabs.pro/docs
- API: [API.md](API.md)
- Pricing: [PRICING.md](PRICING.md)

## Disclaimer

MCPLabs is an independent community-built discovery and tooling layer for the Base MCP ecosystem. It is not affiliated with, endorsed by, or operated by Base.
