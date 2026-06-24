# MCPLabs API Reference

Base URL: `https://mcplabs.pro/r/api.php`

## Authentication

Include your API key in the Authorization header:

```http
Authorization: Bearer mcplabs_hash_your_secret_key
```

API keys are issued once from the dashboard. Only a hash is stored server-side.

## Endpoints

### GET /v1/me

Returns account profile (email, EVM address, API key prefix, created date).

```bash
curl -fsSL \
  -H "Authorization: Bearer $MCPLABS_API_KEY" \
  https://mcplabs.pro/r/api.php/v1/me
```

### GET /v1/directory

Returns indexed projects. Database-backed when MySQL is connected; falls back to static seed data otherwise.

### GET /v1/pricing

Returns command pricing rows. Minimum cost per API call is **0.001 USDC**.

### GET /v1/balance

Returns cached USDC balance for the linked EVM address.

```json
{
  "ok": true,
  "data": {
    "evm_address": "0x…",
    "usdc_balance_cached": 0,
    "live_refresh": false,
    "note": "USDC balance display is currently cached and may be delayed."
  }
}
```

During beta, `usdc_balance_cached` may be `0` until live on-chain refresh ships.

### POST /v1/submit

Submit a project for directory review. Requires authentication. Writes to the `projects` table with status **Preview**.

Body (JSON):

```json
{
  "name": "My MCP Tool",
  "description": "Short description",
  "category": "MCP Tool",
  "website": "https://example.com",
  "github": "https://github.com/org/repo",
  "x_url": "https://x.com/handle"
}
```

Required: `name`, `description`. Categories match the website submit form: MCP Tool, Base Agent, x402 Service, Developer Resource, Experiment, Utility.

Success (201):

```json
{
  "ok": true,
  "data": {
    "id": 1,
    "slug": "my-mcp-tool",
    "status": "Preview",
    "message": "Submission received. Review is manual during beta."
  }
}
```

## Web vs API submit

| Method | Path | Result |
|--------|------|--------|
| Website form | [mcplabs.pro/submit](https://mcplabs.pro/submit) | Opens email to dev@mcplabs.pro (mailto) |
| CLI | `mcplabs submit` | POST /v1/submit → database |
| curl | POST /v1/submit | Database queue |

## Errors

| Status | Meaning |
|--------|---------|
| 401 | Invalid or missing API key |
| 404 | Unknown route |
| 422 | Validation error (e.g. missing name/description) |
| 503 | Database unavailable |

## Response shape

```json
{
  "ok": true,
  "data": {}
}
```

Failure:

```json
{
  "ok": false,
  "error": "message"
}
```

## Links

- Website docs: https://mcplabs.pro/docs
- CLI: [CLI.md](CLI.md)
