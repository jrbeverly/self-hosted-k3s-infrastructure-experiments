# self-hosted-k3s-infrastructure-experiments

> [!WARNING]
> **AI-authored:** This change was autonomously planned and implemented by an AI software factory from a human-authored specification, with possible subsequent human review or modification.

Flux CD GitOps tree and bootstrap scripts for a single-node k3s home server: k3sup over SSH, MetalLB, kube-vip, Traefik, cert-manager, media and workspace apps.

Needs a reachable Ubuntu host, `k3sup`, `flux`, and a GitHub repo holding this tree. Nothing here runs locally.

```sh
bash scripts/ssh-for-fresh.sh <ip> <user>
bash scripts/k3s-install.sh <ip> <user>
bash scripts/fluxcd-install.sh <github-user> <github-repo>
```

## Notes

- series of experiments; moving private home lab/home servers to self-hosted K3s
- expected benefit; easier service management + lifecycle handling
- in practice; not seeing enough added value
- Docker + Docker Compose + SSH + Portainer already handles the environment effectively
- K3s introduces additional operational surface area without solving a meaningful problem
- monitoring/cluster-management features largely irrelevant for current scale
- hardware generally not pushed hard enough to justify deeper monitoring/ orchestration
- systems that are intentionally pushed hard are expected to fail; failure is obvious when it happens
- extra resilience/observability machinery therefore has limited value
- conclusion; self-hosted K3s adds complexity without enough practical benefit for this home lab
