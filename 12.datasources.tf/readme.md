# Terraform Data Sources

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform  

---

## What are Data Sources in Terraform?

Data sources allow Terraform to **read information about existing resources**.

They do NOT create resources.  
They only fetch data from the provider.

Data sources are useful when:
- resources already exist
- we want to reference them
- we do not want Terraform to manage their lifecycle

---

## Why Do We Need Data Sources?

In real projects:

- Some infrastructure is already created
- Some resources are managed by other teams
- We should not recreate everything

Examples:
- Existing Resource Group
- Existing Virtual Network
- Existing Subnet
- Existing Key Vault
- Existing VM

Data sources allow Terraform to **use existing infrastructure safely**.

---

## Difference Between Resource and Data Source

Resource:
- Creates and manages infrastructure
- Terraform controls lifecycle

Data Source:
- Reads existing infrastructure
- Terraform does NOT manage lifecycle

Simple understanding:
Resource = create  
Data Source = read  

---

## Syntax of Data Source

Syntax:

data "<provider>_<resource_type>" "<name>" {
  arguments
}

Example:

data "azurerm_resource_group" "rg" {
  name = "existing-rg"
}

---

## How to Use Data Source Values

Data source values are accessed using:

data.<type>.<name>.<attribute>

Example:

data.azurerm_resource_group.rg.location

---

## When to Use Data Sources

Use data sources when:
- infrastructure already exists
- resource is managed outside Terraform
- reading information only
- avoiding duplicate creation

Do NOT use data sources when:
- Terraform should create and manage resource

---

## Common Use Cases

- Read existing resource group
- Read existing subnet ID
- Read existing Key Vault
- Read existing public IP
- Read existing VM details

---

## Data Sources in DevOps Pipelines

In pipelines:
- read existing infra
- deploy application on top
- avoid infra recreation

Data sources are heavily used in real projects.

---

## Common Mistakes

- Trying to modify resources using data sources
- Confusing resource and data blocks
- Using data source when resource is required
- Wrong resource name

---

## Interview Questions

Q1: What is a data source in Terraform?  
Used to read existing infrastructure information.

Q2: Does data source create resources?  
No.

Q3: Can data source replace resource block?  
No, both serve different purposes.

Q4: Are data sources stored in state file?  
Yes, fetched values are stored in state.

---

## PKsir Message

Terraform is not only about creating infrastructure.

Real power comes when you can:
create some resources  
and read existing ones safely.
