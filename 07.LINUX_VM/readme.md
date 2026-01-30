# Terraform Lab – Azure Linux Virtual Machine Creation

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform  

---

## Lab Objective

In this lab, we will create a basic Azure Linux Virtual Machine using Terraform.

The purpose of this lab is to understand:
- Terraform resource blocks
- Resource dependencies
- End-to-end VM creation flow in Azure

This lab uses **simple Terraform code** without variables for easy understanding.

---

## Resources Created in This Lab

The following Azure resources are created:

- Resource Group
- Virtual Network (VNet)
- Subnet
- Network Security Group (NSG)
- Public IP Address
- Network Interface (NIC)
- Linux Virtual Machine

---

## Lab Architecture (Logical Flow)

Resource Group  
└── Virtual Network  
    └── Subnet  
        └── Network Interface  
            ├── Network Security Group  
            ├── Public IP  
            └── Linux Virtual Machine  

Terraform automatically handles the dependency order.

---

## Prerequisites

Before running this lab, make sure:

- Terraform is installed
- Azure CLI is installed
- Azure Service Pricinple(SPN)

---

## Terraform Files Used

This lab contains simple Terraform configuration files:

- provider.tf
- ResourceGroup.tf
- virtualnetwork.tf
- NIC_card.tf
- NSG.tf
- publicIP.tf
- VM.tf

All `.tf` files are read together by Terraform.

---

## Step 1: Initialize Terraform

Run the following command in the lab folder:

terraform init

This will:
- Download Azure provider
- Initialize Terraform working directory

---

## Step 2: Validate Terraform Configuration

Run:

terraform validate

This checks:
- Terraform syntax
- Required arguments

No resources are created in this step.

---

## Step 3: Review Execution Plan

Run:

terraform plan

Terraform will show:
- Resources that will be created
- Configuration details

Always review the plan carefully before applying.

---

## Step 4: Apply Terraform Configuration

Run:

terraform apply

When prompted, type:

yes

Terraform will now create:
- Resource Group
- Network components
- Linux Virtual Machine

Wait until apply completes successfully.

---

## Step 5: Verify Resources in Azure Portal

After apply completes, verify in Azure Portal:

- Resource Group is created
- Virtual Network and Subnet exist
- Public IP is assigned
- Linux VM is running

---

## Step 6: Connect to Linux VM (Optional)

Use SSH to connect to the VM using public IP:

ssh <username>@<public-ip>

(Username should match the one defined in Terraform code)

---

## Step 7: Destroy Resources (After Practice)

After completing the lab, clean up resources:

terraform destroy

Type:

yes

This will delete all resources created by this lab.

---

## Important Notes

- This lab uses hardcoded values for simplicity
- Variables will be introduced in upcoming labs
- This approach helps beginners focus on understanding resource blocks

---

## Common Issues

### Authentication Error

Make sure you ran:

az login

And selected correct subscription.

---

### VM Creation Failure

Check:
- VM size availability in region
- Username and authentication settings
- NSG inbound rules for SSH (port 22)

---

## Learning Outcome

After completing this lab, you should understand:

- How Terraform creates Azure infrastructure
- How resources are linked together
- How Terraform manages creation order
- Basic Linux VM provisioning using Terraform

This lab forms the foundation for:
- Variables
- Modules
- Reusable infrastructure
- Production-ready VM deployments

---

## PKsir Message

Always understand the full flow:
Network → Security → Compute.

If VM does not work,
90 percent of the time the issue is networking or NSG configuration.