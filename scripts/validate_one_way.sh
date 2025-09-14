#!/usr/bin/env bash
set -euo pipefail
echo "[+] Ghost Diode PoC validation"
TARGET_IP="${1:-10.0.0.10}"
PORT="${2:-514}"

echo "[i] Sending UDP test messages to ${TARGET_IP}:${PORT}"
for i in $(seq 1 5); do
  echo "ghost-diode test $i $(date -Is)" | nc -u -w1 "${TARGET_IP}" "${PORT}" || true
done

echo "[i] Attempting ping back toward secure side (should fail)"
if ping -c 2 -W1 10.0.0.5 >/dev/null 2>&1; then
  echo "[!] Reverse ping succeeded — investigate!"
  exit 1
else
  echo "[✓] Reverse ping failed as expected"
fi
