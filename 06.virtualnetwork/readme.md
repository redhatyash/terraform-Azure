# Azure Virtual Network Creation Using Terraform

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform, Cloud Engineering  

---

## Lab Objective

In this lab, we will create the following Azure resources using Terraform:

- Resource Group
- Virtual Network (VNet)
- Subnet

This lab helps you understand:

- Basic Terraform structure
- How resources are connected
- How dependencies work automatically

---

## Prerequisites

Before starting this lab, make sure:

- Terraform is installed
- Azure CLI is installed
- You are logged in to Azure using:

SPN details

- Correct subscription is selected

---

## Lab Architecture

Resources created:

Resource Group  
└── Virtual Network  
    └── Subnet

All resources will be created in same region and resource group.

---

## Files Used in This Lab

This lab uses following Terraform files:

- provider.tf     → Azure provider configuration
- resourcegroup.tf         → Resource definitions (RG)
- virtualnetwork.tf     → Resource definitions (VNet, Subnet)

---

## Step 1: Initialize Terraform

Run in lab folder:

terraform init

This will:

- Download Azure provider
- Prepare Terraform working directory

---

## Step 2: Validate Configuration

Run:

terraform validate

This checks:

- Syntax errors
- Missing arguments

No resources are created at this stage.

---

## Step 3: Review Execution Plan

Run:

terraform plan

Terraform will show:

- What resources will be created
- Their names and locations

Always review plan before applying.

---

## Step 4: Apply Terraform Configuration

Run:

terraform apply

Type:

yes

Terraform will now:

- Create Resource Group
- Create Virtual Network
- Create Subnet

Verify in Azure Portal after completion.

---

## Step 5: Verify in Azure Portal

Check:

- Resource Group exists
- VNet address space
- Subnet address range

Make sure values match your Terraform code.

---

## Step 6: Destroy Resources (Optional)

After lab practice, clean up resources:

terraform destroy

Type:

yes

This will delete all resources created by this lab.

---

## Common Issues

### Provider Authentication Error

Make sure you ran:

az login

And correct subscription is selected.

---

### Address Space Overlap Errors

Make sure:

- VNet CIDR and Subnet CIDR are valid
- Subnet range is inside VNet range

---

## Learning Outcome

After completing this lab, you should understand:

- How Terraform creates Azure network resources
- How resource references create dependencies
- How Terraform manages resource lifecycle

This VNet will be reused in future labs for:

- Virtual Machines
- Load Balancers
- AKS clusters

---

## PKsir Message

Always build networking first in cloud projects.

If network design is wrong,  
all application and security layers will suffer later.

Practice networking concepts properly before moving to compute resources.