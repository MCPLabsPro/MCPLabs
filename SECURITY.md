# Security Policy

## Reporting

Report vulnerabilities to **dev@mcplabs.pro**. Do not open public issues for sensitive reports.

Public repository: [github.com/MCPLabsPro/MCPLabs](https://github.com/MCPLabsPro/MCPLabs)

## MCPLabs website

### Secrets

- Never commit `core/secret.php`
- Use placeholder values only in `core/secret.example.php`
- Rotate `MCP_API_KEY_PEPPER` and `MCP_ENCRYPTION_KEY` if exposed
- Use strong MySQL credentials on cPanel

### API keys

- Raw API keys are shown once in the dashboard
- Database stores `api_key_hash` only (SHA-256 + server pepper)
- Regenerate immediately if a key is leaked

### Sessions

- PHP sessions use HttpOnly cookies and SameSite=Lax
- Session ID regenerated on login

### Database

- All queries use PDO prepared statements
- Direct HTTP access to `/core/`, `/views/`, `/database/` is denied

### Privy & wallets

- Email login via Privy
- Embedded Base-compatible EVM wallet provisioned through **Privy** on first sign-in
- Private keys are never displayed in the MCPLabs dashboard
- Wallet custody and key management handled by Privy

### CLI

- API key stored in `~/.mcplabs/config` — chmod 600 when possible
- Do not commit config files to Git

## Supported versions

| Component | Supported |
|-----------|-----------|
| mcplabs.pro website | active development |
| mcplabs CLI | 0.1.x |

## Disclaimer

MCPLabs is independent and not operated by Base.
