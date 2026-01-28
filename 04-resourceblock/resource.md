# Terraform Resource Block (Core Concept)

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform, Cloud Engineering  

---

## What is a Resource in Terraform?

A resource represents a real object in cloud or service.

Examples of resources:
- Virtual Machine
- Virtual Network
- Storage Account
- Database
- Load Balancer

Each resource block tells Terraform:
what to create and how it should be configured.

---

## Basic Structure of Resource Block

Syntax:

resource "<PROVIDER>_<RESOURCE_TYPE>" "<NAME>" {
  arguments
}

Example:

resource "azurerm_resource_group" "rg" {
  name     = "pksir-rg"
  location = "East US"
}

---

## Parts of Resource Block

In this example:

resource "azurerm_resource_group" "rg"

- azurerm_resource_group → resource type
- rg → Label Name

Label name is only used inside Terraform code.  
It does not affect actual Azure resource name.

---

## How Terraform Identifies Resources

Terraform identifies a resource using:

resource_type.resource_name

Example:

azurerm_resource_group.rg

This reference is used when connecting resources.

---

## PKsir Message

Terraform is not about writing many lines of code.  
It is about connecting resources correctly and managing lifecycle safely.

Always understand:
what depends on what.
