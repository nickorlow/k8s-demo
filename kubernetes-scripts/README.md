# Kubernetes Scripts
Various scripts for testing the features of Kubernetes

### `init-cluster.sh`
Initializes a kind cluster with 1 control plane node and 3 worker nodes. Also configures kind to work with the kubernetes metrics server and nginx-ingress.

### `kind-config.yaml` 
Cluster definition for kind. See [kind website](https://kind.sigs.k8s.io/docs/user/configuration/).

### `cleanup-cluster.sh`
Removes the cluster from your machine.

### `deploy-site.yml`
Deploys a website with the details defined in `deployment.yaml` (see info for `deployment.yaml` for details on the site's deployment). 

### `deployment.yaml`
Kubernetes manifest yaml file that represents the test website. It deploys the site with 3 replicas, a memory limit of 1024Mi, and a CPU limit of 512m. It also deploys a livenessProbe to ensure that the pod is restarted if it fails a healthcheck. It deploys the website under the domain name `demo-site.local` and configures "sticky sessions" so Blazor's webhooks work properly.

**NOTE:** add `127.0.0.1            demo-site.local` to `/etc/hosts` in order to access the site properly

### `upgrade-site.sh`
Updates the image on the site from `deployment.yaml` to `ghcr.io/nickorlow/k8s-demo:2.0.0` and triggers a rolling restart for the website.

### `rollback-site.sh`
Updates the image on the site from `deployment.yaml` to `ghcr.io/nickorlow/k8s-demo:1.0.0` and triggers a rolling restart for the website.

### `kill-worker.sh`
Kills one node of the Kubernetes cluster to demonstrate how Kubernetes handles a failing node.

### `show-metrics.sh`
Shows the resoruce utilization from the metrics server for all of the pods in the default namespace.
