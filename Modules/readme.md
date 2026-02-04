# Terraform Modules

## What Is a Terraform Module

A Terraform module is a **container for multiple resources** that are used together.

A module helps us:

- Avoid code duplication
- Reuse infrastructure code
- Maintain infrastructure easily
- Follow best practices

---

## Why We Need Modules

In the previous approach:

- Same code was repeated in `dev`, `stage`, and `prod`
- Any change had to be copied to all environments
- Maintenance became difficult as infrastructure grew

Terraform Modules solve these problems.

---

## How Modules Work

- Common infrastructure code is written **once** inside a module
- Environments call the module and pass environment-specific values
- Logic stays in the module
- Configuration stays in the environment

---

## Typical Module Structure

```
viitor_tf_infra/ # Root folder
├── Infra_modules/
│ ├── RG/ # Resource Group module
│ ├── virtualnetwork/ # Virtual Network module
│ ├── virtualMachine/ # Virtual Machine module
│ └── NetworkSecurityGroup/ # Network Security Group module
├── Dev_Env/ # Development environment
├── Stage_Env/ # Staging environment
└── Prod_Env/ # Production environment

```
---

## Benefits of Using Modules

- Single source of truth
- Easy to maintain and update
- Clean and readable code
- Scales well for large infrastructure
- Industry-standard Terraform practice

---

## Important Notes

- Modules do not manage state separately
- State is still maintained per environment
- Modules only provide reusable logic

---

## Learning Outcome

After understanding modules, you will be able to:

- Design reusable Terraform code
- Manage multiple environments efficiently
- Build scalable and production-ready infrastructure

---

## PKsir Message

Code duplication teaches basics.  
Modules teach engineering.


