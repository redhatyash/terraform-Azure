# Terraform Fundamentals – What is Terraform & Why IaC (Day 1)

Mentor: Praveen Kumar Gudla (PKsir)  
Focus: Azure, DevOps, Terraform, Cloud Engineering  
Experience: 17+ Years in Industry  

Connect:  
LinkedIn: https://www.linkedin.com/in/praveengudla  
GitHub: https://github.com/scalewithpk  

Learn Cloud the Industry Way — Not Just for Interviews

---

## What is Infrastructure?

Infrastructure means:

- Servers (VMs or Physical servers)  
- Networks (VNet, Subnet, Firewall, Load Balancer)  
- Storage  
- Databases  
- Security rules  

Example:

To run a web application, you need:

- Virtual Machine  
- Operating System  
- Network  
- Disk  
- Firewall rules  

All these together are called Infrastructure.

---

## Traditional Way of Managing Infrastructure

Earlier, infrastructure was created by:

- Manually clicking in cloud portal  
- Running scripts manually  
- Requesting servers from IT teams  

## Problems:

- Slow process  
- Human errors  
- No standard configuration  
- Difficult to repeat  
- Hard to track changes  

PKsir Real-Time Example:

In physical data center days, server requests used to take weeks.  
Even small firewall changes required tickets and approvals.  
Mistakes were common and rollback was painful.

---

## What is Infrastructure as Code (IaC)?

Simple definition:

Infrastructure is created and managed using code files instead of manual clicks.

Example:

resource "azurerm_virtual_machine" "vm1" {
  name = "web-vm"
}

When you run Terraform, it creates the VM automatically.

---

## Benefits of IaC

Problem: Manual work  
Solution: Automated deployments  

Problem: Human errors  
Solution: Same code every time  

Problem: No tracking  
Solution: Version control using Git  

Problem: Hard rollback  
Solution: Revert code  

Problem: No standard  
Solution: Reusable templates  

---

## IaC in DevOps Culture

DevOps focuses on:

- Automation  
- Repeatability  
- Fast delivery  
- Reliability  

IaC supports DevOps by enabling:

- Automated infrastructure creation  
- Integration with CI/CD pipelines  
- Environment consistency (Dev, Test, Prod)  
- Faster recovery during failures  

There is no modern DevOps without IaC.

---

## What is Terraform?

Terraform is an open-source Infrastructure as Code tool developed by HashiCorp.

It allows you to:

- Create infrastructure  
- Update infrastructure  
- Delete infrastructure  

Using the same language across multiple cloud platforms.

---

## What Can Terraform Manage?

Terraform can manage:

- Azure  
- AWS  
- GCP  
- Kubernetes  
- Databases  
- SaaS tools like GitHub, Datadog  

Terraform connects to platforms using providers.

One tool can manage many platforms.

---

## How Terraform Works (High Level)

Flow:

Your Code → Terraform → Cloud APIs → Infrastructure

Steps:

1. You write infrastructure code  
2. Terraform reads the configuration  
3. Terraform communicates with cloud APIs  
4. Real resources are created in cloud  

---

## Why Companies Prefer Terraform

Cloud independent:

Same tool can be used for:

- Azure  
- AWS  
- GCP  

Declarative language:

You define what you want.  
Terraform decides how to create it.

State management:

Terraform tracks what resources it created and manages changes safely.

Reusable modules:

Standard infrastructure patterns can be reused by all teams.

---

## Terraform vs Other IaC Tools

ARM Templates – Only Azure  
Bicep – Only Azure  
CloudFormation – Only AWS  
Terraform – Multi-Cloud  

Companies using multiple clouds usually prefer Terraform.

---

## Where Terraform Fits in DevOps Pipeline

Typical flow:

Git → CI/CD Pipeline → Terraform → Cloud

Process:

- Developer commits infrastructure code  
- Pipeline runs Terraform  
- Infrastructure is deployed automatically  

Infrastructure becomes part of software delivery.

---

## When Should You Use Terraform?

Terraform is useful when:

- Repeatable infrastructure is required  
- Team collaboration is needed  
- Multiple environments exist  
- CI/CD automation is required  
- Standardization is important  

---

## Common Beginner Mistakes

- Creating infrastructure manually and partially using Terraform  
- Not using remote state  
- Not using modules  
- Mixing dev and prod configurations  

These lead to operational problems in real projects.

---

## Interview Questions

Q1: What is Infrastructure as Code?  
Managing infrastructure using code instead of manual operations.

Q2: Why is IaC important in DevOps?  
It enables automation, consistency, and faster deployments.

Q3: What is Terraform?  
An open-source multi-cloud Infrastructure as Code tool by HashiCorp.

Q4: Is Terraform imperative or declarative?  
Declarative.

Q5: Why Terraform instead of ARM templates?  
Terraform supports multi-cloud and reusable modules.

---

## PKsir Key Message to Students

If you can automate infrastructure,  
you become more valuable than someone who only works in cloud portal.

Terraform is not just a tool.  
It is an engineering mindset.
