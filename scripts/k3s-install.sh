#!/usr/bin/env bash
#
# A simple script setting up K3s and FluxCD
#

# Connection parameters as first and second argument
machine_ip="$1"
machine_user="$2"
machine_connection="${machine_user}@${machine_ip}"

k3sup install \
    --ip="${machine_ip}" \
    --user="${machine_user}" \
    --ssh-key ssh/k3s_rsa \
    --k3s-extra-args="--disable servicelb --disable traefik"

# Configure kubeconfig for connection
export KUBECONFIG=$(realpath kubeconfig)
kubectl config set-context default
kubectl get node -o wide
