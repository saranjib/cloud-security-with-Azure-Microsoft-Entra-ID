# 🔐 Azure Microsoft Entra ID Security & Access Management

A simple hands-on Azure security project demonstrating **Microsoft Entra ID**, **security groups**, **Azure RBAC**, and **least-privilege access** to Azure resources.

The project uses **Terraform** to provision an Azure Storage Account and configure identity-based access using Microsoft Entra ID groups.



## 🏗️ Architecture 


---

## 📌 Project Overview

Identity and Access Management (IAM) is one of the most important parts of cloud security.

In this project, we create:

* An Azure Resource Group
* An Azure Storage Account
* Microsoft Entra ID security groups
* Azure RBAC role assignments
* Developer and Reader access levels
* Optional Microsoft Entra ID application registration

---



## 🎯 Objectives

The main objectives of this project are:

1. Understand Microsoft Entra ID.
2. Create security groups.
3. Implement Azure Role-Based Access Control.
4. Apply the principle of least privilege.
5. Give different users different levels of access.
6. Automate Azure infrastructure using Terraform.
7. Test authorized and unauthorized access.

---

## 🛠️ Technologies Used

| Technology         | Purpose                  |
| ------------------ | ------------------------ |
| Microsoft Azure    | Cloud platform           |
| Microsoft Entra ID | Identity management      |
| Azure RBAC         | Authorization            |
| Azure Storage      | Protected Azure resource |
| Terraform          | Infrastructure as Code   |
| Azure CLI          | Azure management         |
| GitHub             | Source code management   |

---  


## 📁 Project Structure

```text
azure-entra-id-security/
│
├── terraform/
│   ├── providers.tf
│   ├── variables.tf
│   ├── main.tf
│   ├── entra.tf
│   ├── rbac.tf
│   └── outputs.tf
│
├── scripts/
│   └── login-test.sh
│
├── .gitignore
└── README.md
```

---


# 🧪 Security Testing

## Test 1 — Developer Access

Login as the developer.

Expected:

```text
Developer
    ↓
Azure-Demo-Developers
    ↓
Storage Blob Data Contributor
    ↓
Storage Account
    ↓
ACCESS ALLOWED
```

---

## Test 2 — Reader Access

Login as the reader.

Expected:

```text
Reader
    ↓
Azure-Demo-Readers
    ↓
Reader
    ↓
Storage Account
    ↓
READ ACCESS
```

The reader should not have contributor permissions.

---

## Test 3 — Unauthorized User

A user who is not a member of either group should not receive the permissions granted by these assignments.

```text
User
 │
 ▼
No Assigned Role
 │
 ▼
Storage Resource
 │
 ▼
ACCESS DENIED
```

---

# 👨‍💻 Author

**Saranjib Kuanar**

