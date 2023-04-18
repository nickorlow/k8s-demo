echo "Running: kubectl apply -f ./deployment.yaml"
echo
kubectl apply -f ./deployment.yaml
echo
echo
echo "NOTE: Ensure you have demo-site.local forwarded to the KinD cluster in /etc/hosts!"