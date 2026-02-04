## Different Environments – Folder Based Approach

In real-world projects, we usually manage **multiple environments** such as Development, Staging, and Production.

To understand environment separation clearly, we will first follow a **folder-based approach** where the **same Terraform code is repeated** in each environment.

This approach is simple and beginner-friendly, and helps in understanding how environments work before introducing modules.

---

## Environment Folder Structure

We create **separate folders for each environment**:

```text
terraform-environments/
│
├── dev/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tf
│   ├── outputs.tf
│
├── stage/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tf
│   ├── outputs.tf
│
└── prod/
    ├── main.tf
    ├── variables.tf
    ├── terraform.tf
    ├── outputs.tf
```

# Code Repetition (Why We Are Doing This)

The same Terraform code is repeated in `dev`, `stage`, and `prod`.

Only environment-specific values may change.

This helps beginners understand:

- How Terraform behaves per environment  
- How separate state files work  
- How backend configuration differs per environment  

At this stage, code duplication is intentional.

---

## Backend and State Per Environment

Each environment uses a separate backend configuration.

Each environment has its own Terraform state file.

This avoids conflicts between environments.

---

## Example State Files

- dev.terraform.tfstate  
- stage.terraform.tfstate  
- prod.terraform.tfstate  

---

## How to Work With an Environment

Navigate to the required environment folder:

cd dev
terraform init
terraform plan
terraform apply


Repeat the same steps for `stage` and `prod`.

---

## Important Notes

- Environments are fully isolated  
- Changes in `dev` do not affect `stage` or `prod`  
- Backend configuration must be initialized per environment  
- This approach is easy to understand but not scalable  

---

## Limitation of Folder-Based Approach

- Code duplication across environments  
- Difficult to maintain when infrastructure grows  
- Any change must be copied to all environment folders  

These limitations lead us to the next topic: **Terraform Modules**.

---

## PKsir Message

Environments separate risk.  
State files separate responsibility.  
Modules separate intelligence.

