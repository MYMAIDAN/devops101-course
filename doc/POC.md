## Argo CD PoC
This PoC include information how to deploy Argo CD in local kubernetes cluster by using `k3d` + ArgoCD

### Installation
Instal `k3d` from the source:
```bash
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
```

### Setup
Setup K3D cluster
```bash
k3d cluster create argo-cluster
```

Create namespace for ArgoCD
```bash
kubectl create namespace argocd
```

Install ArgoCD
```bash
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

Forward ArgoCD Server port to the localhost 
```bash
kubectl port-forward svc/argocd-server -n argocd 8080:443
```

Get ArgoCD UI Admin Password
```bash
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```

### UI Login
Login creds:

User: admin

Password: 