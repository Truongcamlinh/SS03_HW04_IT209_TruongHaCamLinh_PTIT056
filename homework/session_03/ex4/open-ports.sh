#!/usr/bin/env bash
set -euo pipefail

if [[ "${EUID}" -ne 0 ]]; then
    echo "Vui lòng chạy bằng sudo: sudo ./open-ports.sh" >&2
    exit 1
fi

ufw allow 8080/tcp comment 'Beta App'
ufw allow 8090/tcp comment 'Internal App'
ufw status verbose
