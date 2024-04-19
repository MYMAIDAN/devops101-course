# Status Page 


### Setup Google Clouse K8S Cluster
```bash
gcloud container clusters create my-cluster  --zone us-central1-c --machine-type e2-medium  --num-nodes 2
```

### Get cluster config
```bash
gcloud container clusters get-credentials mycluster --zone us-central1-c --project k8s-k3d 
```

### Create demo namespace 
```bash
kubectl create namespace demo
```
### Build image with version 1.0.0
```bash
docker build -t mykhailomaidan/demo:1.0.0-amd64 .
``` 

and push it
```bash
docker push mykhailomaidan/demo:1.0.0-amd64
```

### Change context to namespace demo
```bash
kubectl config set-context --current --namespace demo
```

### Create deploy
```bash
kubectl create deploy -n demo --image mykhailomaidan/demo:1.0.0-amd64
```

### Create service
```bash
kubectl expose deploy demo --port 80  --type LoadBalancer  --target-port 8080
```

Get the ip address 
```bash 
kubectl get svc 
```

### Create another version
```bash
docker build -t mykhailomaidan/demo:2.0.0-amd64 .
```
and push
```bash 
docker push mykhailomaidan/demo:2.0.0-amd64
```

### Update image on cluster
```bash
kubectl set image  deploy demo demo=mykhailomaidan/demo:2.0.0-amd64
```

### Check history of the deployment
```bash
kubectl rollout history  deploy demo
```

### Rollout to version 1
```bash
kubectl rollout  undo deploy demo --to-revision 1
```

### Mark all pods to one label
```bash
kubectl label po --all  run=demo
```

### Edit service
```bash
kubectl edit svc demo
```

## Canary Deploy

### Scale deploy
```bash
kubectl scale deploy demo  --replicas 9
```

### Kill cluster
```bash
gcloud container clusters delete
```