#!/usr/bin/env bash
#
# A simple script setting up K3s and FluxCD
#

# Connection parameters as first and second argument
github_user="$1"
github_repo="$2"

# Create the FluxCD namespace on the system
kubectl create ns flux-system
kubectl get ns

flux bootstrap github \
  --owner="${github_user}" \
  --repository="${github_repo}" \
  --branch=main \
  --path=./clusters \
  --personal
