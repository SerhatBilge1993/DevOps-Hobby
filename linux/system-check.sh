#!/usr/bin/env bash
set -euo pipefail

echo "=== System info ==="
hostname
uname -a

echo
echo "=== Disk usage (top 5) ==="
df -h | head -n 1
df -h | sort -k5 -r | head -n 5

echo
echo "=== Memory ==="
free -h || vmstat -s
