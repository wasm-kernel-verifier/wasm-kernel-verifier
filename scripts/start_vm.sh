#!/usr/bin/env bash
set -euo pipefail
NAME="${1:-wkv}"
DO_SETUP="${2:-}"

if ! command -v multipass >/dev/null 2>&1; then
  echo "multipass not installed" >&2
  exit 2
fi

if multipass info "$NAME" >/dev/null 2>&1; then
  echo "instance $NAME already exists"
else
  multipass launch --name "$NAME" --cpus 4 --memory 4G --disk 16G --cloud-init cloud-init/user-data.yaml ubuntu:24.04
fi

echo "use ' multipass exec $NAME -- sudo -i -u devuser /bin/bash' to enter or 'multipass exec $NAME -- <cmd>' to run commands"