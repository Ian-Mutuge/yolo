## IP 4 Orchestration with Kubernetes
1. Create a cluster on Google Kubernetes Engine
2. Setup connection to the created GKE cluster in your local machine
3. Build docker image and push it to Google Artifact Registry
docker run -d -p 3000:3000 us-central1-docker.pkg.dev/inlaid-contact-466616-g2/ip4repo/ipfrontend:1.0.0