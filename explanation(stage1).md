## 🧱 Stage 1: Ansible Instrumentation

### 1. Vagrant Setup

Using Vagrant ensures the project environment is reproducible across all machines.

- `vagrant init`: Initializes the environment  
- `vagrant box add`: Adds the base OS image  
- `vagrant up`: Boots and provisions the virtual machine  

---

### 2. Ansible File Structure

Ansible configuration is split into:
- `ansible.cfg`: Defines settings like inventory location and SSH arguments.
- `inventory.yml`: Lists the target hosts.
- `playbook.yml`: Main file that defines which roles/tasks to execute.
- `roles/`: Modularizes configuration tasks (e.g., backend, frontend, database).

Using Ansible roles promotes separation of concerns and readability.

---

### 3. Ansible in Vagrant

Embedding Ansible into the Vagrant provisioning process automates initial setup without requiring manual playbook execution. This is done using:

```ruby
config.vm.provision "ansible" do |ansible|
  ansible.playbook = "playbook.yml"
end
