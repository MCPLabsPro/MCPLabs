# MCPLabs CLI Pricing

All API-backed commands are billed in **USDC**. Minimum cost per call: **0.001 USDC**.

| Command | Description | USDC | Notes |
|---------|-------------|------|-------|
| `mcplabs me` | Account profile | 0.001 | |
| `mcplabs directory` | Directory listing | 0.001 | |
| `mcplabs pricing` | Pricing table | 0.001 | |
| `mcplabs submit` | Project submission | 0.001 | Manual review during beta |
| `mcplabs balance` | USDC balance lookup | 0.001 | Cached; live refresh may cost more later |
| `mcplabs start` | Save API key locally | — | Local only, no API charge |
| `mcplabs login` | Update stored key | — | Local only |
| `mcplabs help` | Help output | — | Local only |
| MCP compatibility scan | Planned | 0.05 | Not yet available |
| x402 tool call | Planned per-request | 0.01 | Not yet available |

## Billing notes

- Costs are denominated in USDC on Base
- Usage is logged per API call in your dashboard
- Pricing is synced from the `command_pricing` database table
- Nothing on mcplabs.pro is financial advice

## $MCPLABS token

$MCPLABS may offer access credits for premium features in the future. It is **not required** for current usage.

See: https://mcplabs.pro/tokenomics
