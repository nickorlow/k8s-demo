
echo "Running: set image deployment/demo-site demo-site=ghcr.io/nickorlow/k8s-demo:1.0.0"
echo
kubectl set image deployment/demo-site demo-site=ghcr.io/nickorlow/k8s-demo:1.0.0

echo "Running: kubectl rollout restart deployment/demo-site"
echo
kubectl rollout restart deployment/demo-site
