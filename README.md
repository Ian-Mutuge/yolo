## IP 3 Configuration Management
# Stage 1: Ansible Instrumentation
1. Set up the environment by provisioning a vagrant virtual machine with the latest ubuntu server.
   
   ```bash
   vagrant init
   ```
  
   ```bash
   Vagrant box list
   ```     
   ```bash
   Vagrant box add
   ```  
   ```bash
   Vagrant ssh config
   ```  
   
   
2. Set up the playbook in the root directory/folder of the main project.
   ```bash
   ansible-galaxy init
   ```  
   ```bash
   Vagrant box list
   ```  
   
   # Stage 2: Ansible and Terraform Instrumentation
   1. In the same directory checkout into a branch named "Stage_two". Create a new directory in the stage-1-Ansible-root folder and name it after the branch you just checked into.