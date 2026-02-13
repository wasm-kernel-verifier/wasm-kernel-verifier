# wasm-kernel-verifier

# Import VM Image:
Run `multipass launch --name wkv --cloud-init cloud-init/user-data.yaml --cpu 4 --mem 4G --disk 16G ubuntu:24.04`

# Launch VM
Run `multipass exec wkv -- sudo apt update && multipass exec wkv -- sudo apt install -y build-essential git linux-headers-$(uname -r)`