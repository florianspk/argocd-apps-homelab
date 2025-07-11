<div align="center">

## <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f680/512.gif" alt="🚀" width="16" height="16"> Mes Applications de mon Homelab <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f6a7/512.gif" alt="🚧" width="16" height="16">

<img src="assets/wheezy_logo.png" align="center"  height="250px"/>


_... géré avec Terraform, ArgoCD, et Talos Linux_ <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f916/512.gif" alt="🤖" width="16" height="16">

</div>

<div align="center">

[![Talos](https://img.shields.io/badge/Talos-Linux-blue?style=for-the-badge&logo=talos&logoColor=white)](https://talos.dev)&nbsp;&nbsp;
[![Kubernetes](https://img.shields.io/badge/Kubernetes-1.32.2-blue?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io)&nbsp;&nbsp;
[![ArgoCD](https://img.shields.io/badge/ArgoCD-GitOps-blue?style=for-the-badge&logo=argo&logoColor=white)](https://argo-cd.readthedocs.io)&nbsp;&nbsp;
[![Terraform](https://img.shields.io/badge/Terraform-IaC-blue?style=for-the-badge&logo=terraform&logoColor=white)](https://terraform.io)

</div>

<div align="center">

[![Tailscale](https://img.shields.io/badge/Tailscale-VPN-brightgreen?style=for-the-badge&logo=tailscale&logoColor=white)](https://tailscale.com)&nbsp;&nbsp;
[![Cloudflare](https://img.shields.io/badge/Cloudflare-ZeroTrust-brightgreen?style=for-the-badge&logo=cloudflare&logoColor=white)](https://www.cloudflare.com)&nbsp;&nbsp;
[![Proxmox](https://img.shields.io/badge/Proxmox-VE-brightgreen?style=for-the-badge&logo=proxmox&logoColor=white)](https://proxmox.com)

</div>

<div align="center">

[![CPU-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.wheezy.fr%2Fcluster_cpu_usage&style=flat-square&label=CPU)](https://kromgo.wheezy.fr)&nbsp;&nbsp;
[![Memory-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.wheezy.fr%2Fcluster_memory_usage&style=flat-square&label=Memory)](https://kromgo.wheezy.fr)&nbsp;&nbsp;
[![Node-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.wheezy.fr%2Fcluster_nodes_ready)](https://kromgo.wheezy.fr)&nbsp;&nbsp;
[![Pod-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.wheezy.fr%2Fcluster_pods_running)](https://kromgo.wheezy.fr)&nbsp;&nbsp;
</div>

---

## <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f4a1/512.gif" alt="💡" width="20" height="20"> Vue d'ensemble

<img src="assets/homepage.png" align="center" />

### GitOps avec ArgoCD

[ArgoCD](https://argo-cd.readthedocs.io/) surveille le repository [argocd-apps-homelab](https://github.com/florianspk/argocd-apps-homelab) et synchronise automatiquement l'état désiré des applications avec le cluster Kubernetes.

Les applications sont organisées par famille et par cluster, permettant une gestion granulaire des déploiements et des mises à jour.

### Structure des répertoires

```sh
📁 argocd-apps-homelab
├── 📁 apps
│     ├── 📁 apps-ops
│     ├── 📁 apps-monitoring
│         ├── 📁 kube-prometheus-stack
│         │    ├── 📁 extras
│         │    ├── 📄 prd.json
│         │    ├── 📄 dev.json
│         │    └── 📄 staging.json
│         └── 📁 apps-ops
│
├── 📁 bootstrap
├── 📁 projects
└── 📄 renovate.json
```

---
