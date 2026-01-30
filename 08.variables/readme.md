# Terraform Variables – Introduction and Usage

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform  

---

## What is a Variable in Terraform?

A variable in Terraform is used to pass values into Terraform configuration.

Instead of hardcoding values inside resource blocks, we define variables and use them in code.

Variables make Terraform code:
- flexible
- reusable
- easy to maintain

---

## Why Variables are Important?

Without variables:
- same value is repeated multiple times
- code becomes rigid
- changes require editing many places

With variables:
- values can be changed from one place
- same code can be reused for dev, test, prod
- code becomes clean and readable

---

## Types of Variables in Terraform

In this session, we focus on **Input Variables**.

Input variables:
- accept values from users
- can have default values
- are defined using variable blocks

---

## How to Define a Variable

Syntax:

variable "<variable_name>" {
  type        = <data_type>
  description = "<description>"
  default     = <value>
}

Example:

variable "location" {
  type        = string
  description = "Azure region"
  default     = "East US"
}

---

## How to Use a Variable

Variables are accessed using:

var.<variable_name>

Example:

location = var.location

---

## Simple Example – Resource Group Using Variables

### variables.tf

variable "rg_name" {
  type        = string
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

---

### main.tf

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

---

## Providing Variable Values

There are multiple ways to provide values.

For now, we use terraform.tfvars.

### terraform.tfvars

rg_name  = "pksir-rg"
location = "East US"

---

## Advantages of Using Variables

- Same code can be reused
- Easy environment separation
- Changes are centralized
- Reduces human errors
- Improves collaboration in teams

---

## Common Beginner Mistakes

- Hardcoding values instead of variables
- Giving default values for everything
- Using variables for values that never change
- Not using descriptions

---

## When to Use Variables

Use variables when:
- value changes per environment
- value is used in multiple places
- code should be reusable

Do not use variables when:
- value is fixed and never changes

---

## Interview Questions

Q1: What is a Terraform variable?  
A value used to make Terraform configuration dynamic.

Q2: How do you access variable value in Terraform?  
Using var.<variable_name>.

Q3: Where are variables defined?  
In variable blocks, usually in variables.tf.

Q4: What is terraform.tfvars used for?  
To provide values for variables.

---

## PKsir Message

Hardcoded infrastructure is not automation.

Variables are the first step towards
real, reusable, production-ready Terraform code.
