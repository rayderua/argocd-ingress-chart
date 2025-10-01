# ArgoCD Ingress Helm Chart

This Helm chart is a lightweight derivative of the official [ArgoCD chart](https://artifacthub.io/packages/helm/argo/argo-cd),  
tailored specifically for deploying only the **Ingress resources**.  
It simplifies installation by removing all non-essential components while preserving compatibility with the original chart.

## Key Features
- 🚀 Deploys only Ingress resources for ArgoCD
- 🧩 Simplified chart based on the official ArgoCD Helm chart
- ⚙️ Default `fullnameOverride` is set to **`argocd`**, matching the default service name in the official chart
