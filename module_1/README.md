# Description
 Application run simple static content server on 8080 port
# Run
## Run by using cargo
```bash
cargo run --release
```

## Deploy bu using k3d
```bash
./deploy
```
## Port Forward
```bash
kubectl port-forward deploy/demo 8080
```