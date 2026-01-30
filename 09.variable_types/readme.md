# Terraform Variable Types

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform  

---

## Why Variable Types are Important

Terraform variables support different data types.

Variable types help:
- validate input values
- avoid wrong data usage
- make code predictable and safe

In real projects, variable types are mandatory for clean and reliable Terraform code.

---

## Common Variable Types in Terraform

Terraform supports many types, but most commonly used are:

- string
- number
- bool
- list
- map
- object

---

## 1. String Type

Used to store text values.

Example:

variable "location" {
  type = string
}

terraform.tfvars:

location = "East US"

Used for:
- resource names
- regions
- usernames
- environment names

---

## 2. Number Type

Used to store numeric values.

Example:

variable "vm_count" {
  type = number
}

terraform.tfvars:

vm_count = 2

Used for:
- instance count
- disk size
- port numbers

---

## 3. Boolean Type

Used to store true or false values.

Example:

variable "enable_public_ip" {
  type = bool
}

terraform.tfvars:

enable_public_ip = true

Used for:
- feature enable/disable
- conditional logic
- optional resources

---

## 4. List Type

Used to store multiple values of same type.

Example:

variable "address_space" {
  type = list(string)
}

terraform.tfvars:

address_space = ["10.0.0.0/16", "10.1.0.0/16"]

Used for:
- CIDR blocks
- availability zones
- multiple resource names

Access list value:

var.address_space[0]

---

## 5. Map Type

Used to store key-value pairs.

Example:

variable "tags" {
  type = map(string)
}

terraform.tfvars:

tags = {
  Environment = "Dev"
  Owner       = "PKsir"
  Project     = "Terraform"
}

Used for:
- resource tags
- configuration mappings

Access map value:

var.tags["Environment"]

---

## 6. Object Type

Used to group different variable types together.

Example:

variable "vm_config" {
  type = object({
    name     = string
    size     = string
    username = string
  })
}

terraform.tfvars:

vm_config = {
  name     = "pksir-linux-vm"
  size     = "Standard_B1s"
  username = "azureuser"
}

Access object values:

var.vm_config.name  
var.vm_config.size  

Used for:
- complex configurations
- grouping related values
- clean module inputs

---

## Default Values with Variable Types

Variables can have default values.

Example:

variable "location" {
  type    = string
  default = "East US"
}

If value is not provided, default is used.

---

## Required Variables

If no default value is given, variable becomes mandatory.

Terraform will ask value during apply
or fail if value is missing.

---

## Sensitive Variables

Used for secrets like passwords.

Example:

variable "admin_password" {
  type      = string
  sensitive = true
}

Sensitive values:
- will not be printed in output
- still stored in state file

Use with care.

---

## Common Mistakes with Variable Types

- Using string for everything
- Mismatch between type and value
- Not defining type at all
- Hardcoding complex values instead of map or object

These mistakes cause runtime errors.

---

## Best Practices

- Always define variable type
- Use list and map instead of repeated variables
- Use object for grouped configuration
- Keep variable definitions simple and readable
- Do not over-engineer types

---

## Interview Questions

Q1: Why do we define variable types in Terraform?  
To validate input and avoid incorrect values.

Q2: What is difference between list and map?  
List uses index, map uses key-value pairs.

Q3: When should object type be used?  
When multiple related values must be passed together.

Q4: Are sensitive variables secure?  
They are hidden in output but stored in state file.

---

## PKsir Message

Variables decide how reusable your Terraform code is.

Good variable design means:
less duplication,
less confusion,
and fewer production issues.
