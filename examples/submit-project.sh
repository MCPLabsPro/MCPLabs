#!/usr/bin/env bash
# Example: submit a project via MCPLabs API
set -euo pipefail
source "${HOME}/.mcplabs/config"
curl -fsSL -X POST \
  -H "Authorization: Bearer ${MCPLABS_API_KEY}" \
  -H "Content-Type: application/json" \
  -d '{"name":"Demo Tool","description":"Example submission","category":"MCP Tool"}' \
  "${MCPLABS_API_BASE:-https://mcplabs.pro/r/api.php}/v1/submit"
