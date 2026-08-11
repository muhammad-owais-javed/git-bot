# Whale-Scale

## Project Structure

```txt
WhaleScale/
├── .env.example             # Template for environment variables
├── Makefile                 # Automation scripts (e.g., `make run-single`, `make run-compose`)
├── Dockerfile               # STAGE 1: The universal, multi-stage Dockerfile
├── docker-compose.yml       # STAGE 2: The multi-container setup (App + DB)
├── k8s/                     # STAGE 3: Kubernetes manifests
│   ├── deployment.yaml      # Manages the pods
│   ├── service.yaml         # Exposes the app internally
│   ├── ingress.yaml         # Exposes the app to the outside world
│   └── configmap.yaml       # K8s environment variables
├── scripts/
│   └── init-new-project.sh  # A script to rename variables when clone this for a new app
└── src/                     # Actual application code goes here!
    ├── app.py               # (Dummy app to test the setup)
    └── requirements.txt
```