# Rails-application

## Project Overview

This project demonstrates the complete DevOps lifecycle for a simple **Ruby on Rails** application using **Docker**, **Kubernetes**, **ArgoCD (GitOps)**, and **Tekton (CI/CD pipelines)**.

---

## Steps Performed

### Step 1: Docker

- Created a `Dockerfile` to containerize the Ruby on Rails application.
- Used PostgreSQL as the backend database, running in a separate container.

### Step 2: Kubernetes

- Created Kubernetes manifests to deploy the application.
- Used a **StatefulSet** for PostgreSQL deployment.
- Configured an **Ingress** resource for external access.

### Step 3: ArgoCD (GitOps)

- Deployed ArgoCD on the cluster.
- Configured ArgoCD to pull Kubernetes manifests from a **private GitHub repository**.
- Set up ArgoCD applications and repository credentials.

### Step 4: Tekton Pipelines (CI/CD)

- Installed Tekton Pipelines and Tekton Dashboard.
- Created a Tekton Pipeline to:
  - Clone the Rails app source code.
  - Build a Docker image using **Kaniko**.
  - Push the image to **Docker Hub** (`rohithkrishna04/rails-app`).

---

## Author

- **Rohith Krishna**
