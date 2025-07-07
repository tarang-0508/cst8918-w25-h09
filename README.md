# CST8918 - W25 - H09: AKS Cluster with Terraform

This project provisions an **Azure Kubernetes Service (AKS)** cluster using **Terraform**, and deploys a sample multi-tier web application including:

- **Frontend**: Vue.js store front  
- **Backend**: Node.js order service, Rust product service  
- **Message broker**: RabbitMQ  

---

## 🚀 Features

- Infrastructure as Code (IaC) using Terraform
- AKS cluster with:
  - 1-3 node auto-scaling pool
  - Standard_B2s VM size
  - System assigned managed identity
- Outputs kubeconfig for `kubectl`
- Kubernetes deployment of sample app using Services and Deployments

---


---

## ⚙️ How to Deploy

### 1️⃣ Initialize Terraform

```bash
terraform init

