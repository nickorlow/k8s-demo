# Kubernetes Demo
A demo for CS 360V at the University of Texas at Austin

This is a demo that sets up a Kubernetes cluster using KinD (Kubernetes in Docker) and deploys a demo site (source code for this is in the `./demo-site` directory)

This demo site can be used do demonstrate Kubernetes' ability to manage resource allocation in terms of memory and CPU, shows how k8s does rolling 
restarts, and how Kubernetes manages failed (crashed) pods and nodes.

## Running yourself

You can run this yourself by installing [kind (Kubernetes in Docker)](https://kind.sigs.k8s.io/). Then clone this repo, `cd kubernetes-scripts` and run `./init-cluster.sh` 

From there, you can use `kubectl` to interact with the cluster, or use one of our provided scripts from the demo to test out functionality of Kubernetes.

Note that if you want to make changes to the website and run them on this demo, you must push the changes you make to the site to a container registry and update the `deployment.yaml` file accordingly.
