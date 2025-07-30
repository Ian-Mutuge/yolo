
## 🏗️ Stage 2: Ansible and Terraform Instrumentation

---

### 1. Terraform Provisioning with Vagrant Integration

In this stage, Terraform is used to manage infrastructure provisioning—even for local environments like Vagrant. You begin by creating a Terraform script that will control the startup 
provisioning of your virtual machine using the `null_resource` and `local-exec` provisioner.

Create a file (e.g., `main.tf`) and add the following:

```hcl
resource "null_resource" "local" {
  provisioner "local-exec" {
    command = "vagrant up --provision"
  }
}
```
### 2. Triggering deployment using the ansible playbook
 
 Ansible YAML playbook should trigger both the resources provision using Terraform as well as the server configuration using Ansible roles playbooks. Thi is achieved by adding a 
 role on the ansible playbook that triggers the provisioning using terraform after which the deployment of the application is executed
  - Navigate to the root of the playbook and add a role that triggers the provisioning of the application using terraform as well running of the application
   ```bash
   ansible-galaxy init deployment
   ```  
  
  
