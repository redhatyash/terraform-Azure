# Terraform Output Variables

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform  

---

## What are Output Variables in Terraform?

Output variables are used to display values after Terraform creates or updates infrastructure.

They help us:
- see important information on screen
- pass values between modules
- share resource details with users or pipelines

Output variables do not create resources.  
They only expose information.

---

## Why Output Variables are Important?

After infrastructure creation, we usually want to know:

- Resource Group name
- Public IP address
- VM name
- Subnet ID
- Resource IDs

Without outputs:
- we need to go to portal
- or manually search in state file

Outputs make Terraform more user friendly.

---

## How to Define an Output Variable

Syntax:

output "<output_name>" {
  value = <expression>
}

Example:

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

---

## Where to Define Outputs

Outputs can be defined in:
- outputs.tf
- main.tf
- any .tf file

Best practice:
- keep all outputs in a separate file called outputs.tf

---

## Simple Example – Output for Resource Group

### outputs.tf
# Terraform Output Variables

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform  

---

## What are Output Variables in Terraform?

Output variables are used to display values after Terraform creates or updates infrastructure.

They help us:
- see important information on screen
- pass values between modules
- share resource details with users or pipelines

Output variables do not create resources.  
They only expose information.

---

## Why Output Variables are Important?

After infrastructure creation, we usually want to know:

- Resource Group name
- Public IP address
- VM name
- Subnet ID
- Resource IDs

Without outputs:
- we need to go to portal
- or manually search in state file

Outputs make Terraform more user friendly.

---

## How to Define an Output Variable

Syntax:

output "<output_name>" {
  value = <expression>
}

Example:

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

---

## Where to Define Outputs

Outputs can be defined in:
- outputs.tf
- main.tf
- any .tf file

Best practice:
- keep all outputs in a separate file called outputs.tf

---

## Simple Example – Output for Resource Group

### outputs.tf

output "rg_name" {
value = azurerm_resource_group.rg.name
}



These values are printed after apply.

---

## Accessing Output Values

After apply, output values are shown automatically.

To see outputs again:

terraform output

To see a specific output:

terraform output vm_public_ip

---

## Using Output Values in Real Projects

Outputs are used for:

- Passing values to another module
- Using values in CI/CD pipelines
- Sharing infra details with application teams

Example:
Pipeline reads VM IP and uses it for deployment.

---

## Sensitive Output Variables

Some outputs should not be displayed openly.

Example:

output "admin_password" {
  value     = var.admin_password
  sensitive = true
}

Sensitive outputs:
- are hidden in terminal
- still stored in state file

Use carefully.

---

## Outputs vs Variables

Input Variables:
- values go into Terraform
- control resource creation

Output Variables:
- values come out of Terraform
- show created resource details

Both are important but serve different purposes.

---

## Common Mistakes with Outputs

- Forgetting to define outputs
- Outputting sensitive data unnecessarily
- Hardcoding values instead of referencing resources
- Using outputs where variables are required

---

## Best Practices

- Output only useful information
- Use clear output names
- Avoid exposing secrets
- Group outputs logically

---

## Interview Questions

Q1: What is an output variable in Terraform?  
A value that Terraform displays after infrastructure creation.

Q2: When are output values evaluated?  
After terraform apply.

Q3: Can outputs be used between modules?  
Yes, outputs are used to pass values from one module to another.

Q4: Are outputs stored in state file?  
Yes.

Q5: How do you view outputs again after apply?  
Using terraform output command.

---

## PKsir Message

Terraform creates infrastructure,
but outputs tell you what Terraform created.

Good outputs save time,
especially in large projects and pipelines.
