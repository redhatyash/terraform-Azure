# Terraform Providers (Core Concept)

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform, Cloud Engineering  

---

## What is a Provider in Terraform?

A provider is a plugin that allows Terraform to talk to external APIs such as cloud platforms and services.

Terraform itself does not know how to create:
- Azure resources
- AWS resources
- Kubernetes objects

Providers give Terraform the ability to manage these platforms.

Without provider, Terraform cannot create any resource.

Provider:
- Connects Terraform to platform
- Handles authentication
- Handles API communication

---

## Examples of Providers

Some commonly used providers:

- azurerm → Microsoft Azure
- aws → Amazon Web Services
- google → Google Cloud Platform
- kubernetes → Kubernetes clusters
- github → GitHub repositories and users

Each provider knows how to communicate with its own platform APIs.

---

## How Provider Works Internally (Concept)

Flow:

Terraform → Provider Plugin → Cloud API → Resource Created

Terraform sends instructions to provider.  
Provider translates them into API calls for cloud platform.

---

## Provider Block in Terraform

To use Azure, we define azurerm provider.

Example:

provider "azurerm"
 {

  features {}

}

This tells Terraform:
Use Azure provider and enable required features.

---

## Authentication with Provider

Provider must authenticate to cloud.

In Azure, authentication usually happens using:

- Azure CLI login
- Service Principal


## Interview Questions

Q1: What is a Terraform provider?  
A plugin that allows Terraform to communicate with cloud or service APIs.

Q2: Can Terraform work without provider?  
No, provider is required to manage any external resource.

Q3: When are providers downloaded?  
During terraform init.

Q4: Can we use multiple providers in same project?  
Yes, Terraform supports multiple providers.

Q5: What is provider alias used for?  
To use same provider with different configurations.

## PKsir Message

If provider authentication is wrong,  
Terraform will fail even if your code is correct.

Always verify:
- az login
- correct subscription
- provider version

Before debugging Terraform code.