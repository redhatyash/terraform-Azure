# Terraform Local Variables

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform  

---

## What are Local Variables in Terraform?

Local variables (locals) are used to store values that are calculated or reused inside Terraform configuration.

They help reduce repetition and make Terraform code easier to read and maintain.

Local variables:
- are defined inside Terraform code
- are used only internally
- do not accept values from users

---

## Why Do We Need Local Variables?

In real Terraform projects:

- same names are used repeatedly
- same tags are applied to many resources
- long expressions are written multiple times

Without locals:
- code becomes repetitive
- changes become risky
- readability reduces

Local variables solve this problem by defining values once and reusing them.

---

## How Local Variables Are Defined

Local variables are defined using a `locals` block.

Example:

locals {
  environment = "dev"
  project     = "pksir"
}

Multiple local values can be defined in a single locals block.

---

## How Local Variables Are Used

Local variables are accessed using:

local.<local_name>

Example:

local.environment  
local.project  

They can be used anywhere in Terraform code:
- resource names
- tags
- expressions

---

## Local Variables vs Input Variables

Input Variables:
- take values from users
- can be changed using tfvars
- used for environment-specific inputs

Local Variables:
- are calculated inside Terraform
- cannot be overridden by users
- used for internal logic and reuse

Both are used together in real projects.

---

## Common Use Cases for Local Variables

Local variables are commonly used for:

- naming standards
- environment prefixes
- common tags
- calculated values
- avoiding repeated expressions

Example use case:
Instead of repeating project and environment in every resource name, locals are used to generate a common prefix.

---

## Can Local Variables Change Behavior?

Local variables do not change Terraform behavior directly.

They:
- simplify code
- improve readability
- reduce duplication

Changing a local value can affect multiple resources, but logic remains same.

---

## Where to Define Local Variables

Local variables can be defined in:
- locals.tf
- main.tf
- any .tf file

Best practice:
- keep all locals in a separate file called `locals.tf`

This keeps code clean and organized.

---

## Common Mistakes with Local Variables

- Using locals instead of variables for user input
- Trying to pass locals using tfvars
- Making locals too complex
- Hardcoding environment values in locals when variables are required

Use locals only for internal reuse.

---

## Best Practices

- Use locals for repeated values
- Keep locals simple and readable
- Use meaningful names
- Combine locals with variables and outputs
- Avoid business logic inside locals

---

## Interview Points

Q1: What are local variables in Terraform?  
Values defined inside Terraform configuration for internal reuse.

Q2: Can local variables be passed from tfvars?  
No.

Q3: When should locals be used?  
When values or expressions are repeated multiple times.

Q4: Are locals stored in state file?  
They are evaluated during execution, not treated like inputs.

---

## PKsir Message

Variables make Terraform configurable.  
Locals make Terraform maintainable.

Good Terraform code always uses both correctly.
