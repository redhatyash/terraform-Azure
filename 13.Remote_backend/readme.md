# Terraform Backend & Azure Remote Backend

This document explains **Terraform Backends**, why they are important, and how to use an **Azure Remote Backend** to store the Terraform state file in an **Azure Storage Account**.

---

## What is a Terraform Backend?

A **Terraform backend** defines **where and how Terraform state is stored**.

By default:
- Terraform stores the state locally in `terraform.tfstate`

With a backend:
- State can be stored **remotely**
- Multiple team members can work safely
- State is secured and centralized

---

## Why Backend is Important

Using a backend helps to:

- Centralize Terraform state
- Enable team collaboration
- Prevent state file conflicts
- Improve security
- Support state locking

👉 **In real-world projects, remote backends are mandatory.**

---

## Local Backend vs Remote Backend

### Local Backend
- State stored on local machine
- Not safe for teams
- Risk of state loss or overwrite

### Remote Backend
- State stored in remote storage
- Safe for teams
- Supports locking and versioning

---

## Azure Remote Backend

Terraform supports storing state in **Azure Storage Account** using:

- Storage Account
- Blob Container
- State file stored as a blob

### Azure Services Used
- Resource Group
- Storage Account
- Blob Container

---

## Benefits of Azure Remote Backend

- Secure state storage
- Supports **state locking**
- Supports **versioning**
- Works well with CI/CD pipelines
- Enterprise-grade solution

---

## Backend Configuration Location

Backend configuration is defined in:
```
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstateprod001"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
```
### Backend Configuration Rules

- Backend configuration does **not support variables**
- All backend values must be **hardcoded**
- Backend is initialized using `terraform init`
- Any change to backend configuration requires **re-running `terraform init`**

---

## State File in Azure Storage

- Terraform state is stored as a **blob in Azure Storage**
- Each environment should have a **separate state file**
- This approach avoids conflicts between environments

### Example State File Keys

- `dev.terraform.tfstate`
- `test.terraform.tfstate`
- `prod.terraform.tfstate`

---

## State Locking in Azure Backend

- Azure uses **Blob Lease** for state locking
- Prevents multiple users from applying changes at the same time
- Helps avoid state corruption
- State locking is **automatic** when using Azure remote backend

---

## Permissions Required

To use Azure Remote Backend, the following permissions are required:

### Control Plane Permissions

- Storage Account Contributor (or higher)

### Data Plane Permissions

- Storage Blob Data Contributor (recommended)

---

## If Permissions Are Missing

- `terraform init` may fail
- Terraform state cannot be read or written
- Always validate permissions before initializing the backend

---

## Common Mistakes

- Using variables inside the backend block
- Missing storage account permissions
- Incorrect container name or state file key
- Manually editing Terraform state files
- Sharing the same state file across multiple environments

---

## Best Practices

- Use separate state files per environment
- Enable Storage Account versioning
- Restrict access to Terraform state storage
- Never commit `terraform.tfstate` to Git
- Use remote backend with CI/CD pipelines

---

## Interview Points

**Q1: What is a Terraform backend?**  
Defines where Terraform state is stored.

**Q2: Can backend use variables?**  
No, backend configuration does not support variables.

**Q3: Why use Azure Storage Account for backend?**  
It provides secure, remote, and locked state storage.

**Q4: How does state locking work in Azure?**  
Using the blob lease mechanism.

---

## PKsir Message

> Backend decides where state lives.  
> Remote backend decides how teams work safely.
