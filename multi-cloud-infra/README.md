# Multi-Cloud Infrastructure Deployment with Terraform
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
│   ├── deploy.yml       # GitHub Actions Workflow
└── README.md            # Project Documentation
```

---

## **Prerequisites**
Before deploying, ensure you have the following installed:

### **1. Cloud Accounts**
- [AWS Free Tier](https://aws.amazon.com/free/)
- [Azure Free Account](https://azure.microsoft.com/en-us/free/)
- [GCP Free Tier](https://cloud.google.com/free)

### **2. Tools Installed**
- **[Terraform](https://www.terraform.io/downloads)**
- **[Git](https://git-scm.com/downloads)**
- **[AWS CLI](https://aws.amazon.com/cli/)**
- **[Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)**
- **[Google Cloud SDK](https://cloud.google.com/sdk/docs/install)**

---

## **Setup Instructions**

### **Step 1: Clone the Repository**
```sh
git clone https://github.com/basedzen/multi-cloud-infra.git
cd multi-cloud-infra
```

### **Step 2: Configure Cloud Credentials**
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

### **Step 3: Deploy Infrastructure**
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

### **Step 4: Deploy a Sample Web App**
This project includes a simple **Flask web application** containerized with **Docker**. The app returns a message confirming successful deployment.

#### **Run the App Locally (Optional)**
```sh
cd web-app
docker build -t multi-cloud-app .
docker run -p 80:80 multi-cloud-app
```

---

## **CI/CD Pipeline (GitHub Actions)**
This project includes a **GitHub Actions Workflow** that automatically deploys infrastructure when changes are pushed to the repository.

### **Workflow File: `.github/workflows/deploy.yml`**
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

## **Cost Optimization**
To **stay within free-tier limits**, ensure:
- You **destroy** resources when not in use:
  ```sh
  terraform destroy -auto-approve
  ```
- You **monitor usage** with billing dashboards in **AWS, Azure, and GCP**.
- You **use smaller instance types** and **serverless options** when possible.

---

## **Troubleshooting**
- **Terraform Error?** Run `terraform fmt` and `terraform validate` to check syntax.
- **Authentication Issues?** Re-authenticate using AWS, Azure, or GCP CLI.
- **Web App Not Working?** Check **networking settings**, **security group rules**, and **firewall rules**.

---

## **Next Steps & Enhancements**
✅ **State Management**: Use remote backend storage (AWS S3, Azure Blob, GCP Buckets).  
✅ **Monitoring**: Add Prometheus/Grafana for real-time monitoring.  
✅ **Security**: Implement least privilege IAM roles.  
✅ **Scaling**: Auto-scale VMs/containers in all clouds.  

---

## **Contributing**
Contributions are welcome! Fork the repo, create a feature branch, and submit a **pull request**.

---

## **License**
This project is open-source under the [MIT License](LICENSE).

---

## **Author**
📌 **David Levi**  
📧 Contact: david.b.levi@hotmail.com  
🌐 GitHub: [https://github.com/basedzen](https://github.com/basedzen)

