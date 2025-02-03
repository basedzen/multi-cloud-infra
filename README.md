# Multi-Cloud Infrastructure Deployment with Terraform

## **Project Overview**
This project demonstrates the deployment of infrastructure across **AWS, Azure, and GCP** using **Terraform** and automates the deployment with **GitHub Actions**. It provisions VPCs, subnets, security groups, and load balancers while ensuring all resources stay within each cloud provider's **Free Tier**.

## **Key Features**
- **Multi-Cloud Deployment**: Infrastructure provisioning across AWS, Azure, and GCP.
- **Infrastructure as Code (IaC)**: Using **Terraform** to define and manage cloud resources.
- **Automated Deployment**: CI/CD pipeline using **GitHub Actions**.
- **Networking & Security**: VPCs, subnets, security groups, and load balancers.
- **Cost Optimization**: Staying within each provider’s Free Tier.

---

## **Project Directory Structure**
```
/multi-cloud-infra
├── aws
│   ├── main.tf          # AWS Infrastructure
│   ├── variables.tf     # AWS Variables
│   ├── outputs.tf       # AWS Outputs
├── azure
│   ├── main.tf          # Azure Infrastructure
│   ├── variables.tf     # Azure Variables
│   ├── outputs.tf       # Azure Outputs
├── gcp
│   ├── main.tf          # GCP Infrastructure
│   ├── variables.tf     # GCP Variables
│   ├── outputs.tf       # GCP Outputs
├── .github/workflows
│   ├── terraform.yml    # GitHub Actions Workflow
└── README.md            # Project Documentation
```

---

## **Git Configuration for Push Access**
To ensure successful Git operations, configure your credentials using:
```sh
git config --global credential.helper store
git config --global user.name "<YOUR_GITHUB_USERNAME>"
git config --global user.email "<YOUR_EMAIL>"
```
If facing authentication issues, generate a **Personal Access Token (PAT)** and use:
```sh
git remote set-url origin https://<YOUR_GITHUB_USERNAME>@github.com/YOUR_REPO.git
```

---

## **Setup Instructions**

### **1. Clone the Repository**
```sh
git clone https://github.com/<YOUR_GITHUB_USERNAME>/<YOUR_REPO>.git
cd multi-cloud-infra
```

### **2. Configure Cloud Credentials**
#### **AWS Credentials**
```sh
aws configure
```

#### **Azure Authentication**
```sh
az login
```

#### **GCP Authentication**
```sh
gcloud auth application-default login
```

### **3. Deploy Infrastructure**
#### **AWS Deployment**
```sh
cd aws
terraform init
terraform apply -auto-approve
```

#### **Azure Deployment**
```sh
cd ../azure
terraform init
terraform apply -auto-approve
```

#### **GCP Deployment**
```sh
cd ../gcp
terraform init
terraform apply -auto-approve
```

### **4. Deploy a Sample Web App**
This project includes a simple **Flask web application** containerized with **Docker**. The app returns a message confirming successful deployment.

#### **Run the App Locally (Optional)**
```sh
cd web-app
docker build -t multi-cloud-app .
docker run -p 5000:5000 multi-cloud-app
```

---

## **CI/CD Pipeline (GitHub Actions)**
This project includes a **GitHub Actions Workflow** that automatically deploys infrastructure when changes are pushed to the repository.

### **Workflow File: `.github/workflows/terraform.yml`**
```yaml
name: Terraform Deployment

on:
  push:
    branches:
      - main

jobs:
  terraform:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v2

      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v1

      - name: Terraform Init & Apply
        run: |
          terraform init
          terraform apply -auto-approve
```

---

## **Troubleshooting Git Push Errors**
- **If you see authentication errors**, reset your credentials:
  ```sh
  git credential reject https://github.com
  ```
- **If push fails due to timeouts**, check your internet connection and retry:
  ```sh
  git push origin main
  ```
- **If using SSH authentication:**
  ```sh
  ssh -T git@github.com
  ```

---

## **Contributing**
Contributions are welcome! Fork the repo, create a feature branch, and submit a **pull request**.

---

## **License**
This project is open-source under the [MIT License](LICENSE).

---

## **Author**
📌 **David Levi**  
🌐 GitHub: [https://github.com/basedzen](https://github.com/basedzen)
