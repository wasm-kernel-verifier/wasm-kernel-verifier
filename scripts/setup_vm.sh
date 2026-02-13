#!/usr/bin/env bash
set -euo pipefail
sudo apt update
sudo apt install -y build-essential git curl wget ca-certificates linux-headers-$(uname -r) wabt
git submodule update --init --recursive
cd kernel-wasm-runtime
make
gcc -o wasm_manager wasm_user_input.c