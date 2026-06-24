#!/usr/bin/env bash
# Example: fetch directory via MCPLabs API
set -euo pipefail
source "${HOME}/.mcplabs/config"
curl -fsSL -H "Authorization: Bearer ${MCPLABS_API_KEY}" \
  "${MCPLABS_API_BASE:-https://mcplabs.pro/r/api.php}/v1/directory"
