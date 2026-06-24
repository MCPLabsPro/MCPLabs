#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="${MCPLABS_INSTALL_DIR:-${HOME}/.local/bin}"
SCRIPT_NAME="mcplabs"
SOURCE_URL="${MCPLABS_INSTALL_URL:-https://mcplabs.pro/github/mcplabs}"

mkdir -p "${INSTALL_DIR}"

if command -v curl >/dev/null 2>&1; then
  curl -fsSL "${SOURCE_URL}" -o "${INSTALL_DIR}/${SCRIPT_NAME}"
elif command -v wget >/dev/null 2>&1; then
  wget -qO "${INSTALL_DIR}/${SCRIPT_NAME}" "${SOURCE_URL}"
else
  echo "Error: curl or wget is required." >&2
  exit 1
fi

chmod +x "${INSTALL_DIR}/${SCRIPT_NAME}"

case ":${PATH}:" in
  *":${INSTALL_DIR}:"*) ;;
  *)
    echo
    echo "Add ${INSTALL_DIR} to your PATH, for example:"
    echo "  export PATH=\"${INSTALL_DIR}:\$PATH\""
    echo "Add that line to ~/.bashrc or ~/.zshrc"
    ;;
esac

echo "Installed mcplabs to ${INSTALL_DIR}/${SCRIPT_NAME}"
echo "Run: mcplabs start"
