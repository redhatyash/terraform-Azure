# Terraform Data Sources

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform  

---

## Introduction

Terraform Data Sources are used to read information about existing infrastructure resources.  
They allow Terraform configurations to reference infrastructure that already exists in Azure or any other cloud provider.

Data sources are **read-only**.  
They do not create, modify, or delete resources.

---

## Why Data Sources Are Important

In real-world and enterprise environments, infrastructure is rarely created by a single Terraform project.

Typical scenarios include:
- Resource Groups created by a platform or cloud team
- Virtual Networks managed by a central networking team
- Shared services such as Key Vaults or Storage Accounts
- Infrastructure created manually or by another Terraform codebase

In these cases, application teams should **reuse existing infrastructure** instead of recreating it.

Terraform Data Sources make this possible.

---

## What Are Data Sources in Terraform?

Data sources allow Terraform to:
- read existing infrastructure
- fetch resource attributes like ID, name, location, and tags
- safely reuse shared infrastructure
- integrate Terraform with already deployed resources

Terraform does **not** control the lifecycle of data source resources.

---

## Defining a Data Source

Data sources are defined using the `data` block.

General syntax:

data "<provider>_<resource>" "<name>" {
  configuration
}


# Terraform Data Sources vs Resources

This document explains the difference between **Resources** and **Data Sources** in Terraform, along with best practices and common interview points.

---

## Resources

Resources are used to **create and manage infrastructure**.

- Terraform **controls their lifecycle**
- Created, updated, and deleted by Terraform
- Stored and tracked in the **Terraform state file**

**Example use cases:**
- Create Virtual Machines
- Create Virtual Networks
- Create Storage Accounts

---

## Data Sources

Data sources are used to **read existing infrastructure**.

- Terraform **does not manage their lifecycle**
- Used only for **reference**
- Helpful when infrastructure already exists

**Example use cases:**
- Read an existing Resource Group
- Fetch existing Subnet details
- Get Key Vault information

---

## Real-World Usage

In production Terraform projects:

- **Resources and Data Sources are used together**
- Data sources help reuse existing infrastructure
- Resources help create new infrastructure on top of it

---

## Commonly Used Azure Data Sources

Some commonly used Azure data sources include:

- `azurerm_resource_group`
- `azurerm_virtual_network`
- `azurerm_subnet`
- `azurerm_network_interface`
- `azurerm_key_vault`
- `azurerm_storage_account`
- `azurerm_client_config`

These are widely used in **enterprise Terraform implementations**.

---

## Where to Define Data Sources

Data sources can be defined in:

- A dedicated `data.tf` file
- Multiple logically separated files (example: `data-network.tf`)
- Any Terraform `.tf` file

### Best Practice

- Keep data sources **separate from resource definitions**
- Improves **readability and maintainability**
- Makes large projects **easier to understand**

---

## Permissions Required

Data sources require **read access** to target resources.

### Common requirements:

- **Reader role** (minimum)
- **Data plane permissions** for services like:
  - Storage Accounts
  - Key Vaults

### If permissions are missing:

- `terraform plan` may fail
- `terraform apply` may fail

👉 Always validate permissions before using data sources.

---

## Common Mistakes

- Trying to use data sources to **create resources**
- Using incorrect resource names or resource groups
- Missing permissions on the target resource
- Assuming cross-subscription access without proper provider configuration

These mistakes are common for **beginners and enterprise environments**.

---

## Best Practices

- Use data sources for **shared or existing infrastructure**
- Avoid **hardcoding resource IDs**
- Combine data sources with **variables and locals**
- Keep data source definitions **simple and readable**
- Validate data source outputs during development

---

## Interview Points

**Q1: What are data sources in Terraform?**  
Used to read information about existing infrastructure.

**Q2: Do data sources create resources?**  
No, data sources are read-only.

**Q3: What happens if a data source resource does not exist?**  
Terraform execution fails.

**Q4: Why are data sources important in enterprise projects?**  
They allow reuse of shared infrastructure without duplication.

---

## PKsir Message

> **Resources create infrastructure.**  
> **Data sources connect Terraform to existing infrastructure.**
> **Understanding data sources is mandatory for real-world Terraform usage.**