# Ansible

For the automation of docker installation, creation of the swarm and application deployment, decided to use ansible due to ease of configuration and only need access to port 22.

## pem key

To access ssh the machine we built with terraform, it is necessary to have the key that was passed as variable in the terraform code.

## Host public ip

We need the public ip of the instance created on AWS to access SSH and be able to perform actions with ansible.

## Execution of the ansible playbook

### Step 1:
First of all, we need to change the hosts file and add the ip to the group in which the playbook will be played.

## Step 2:
At the root of the ansible code, run the command:
```
ansible-playbook -i hosts main.yml
```
Ansible is in charge of running the entire playbook, installing and running the application.


## Show-me the code! 

### Youtube video

[![](http://img.youtube.com/vi/q_uAvqbcntQ/0.jpg)](http://www.youtube.com/watch?v=q_uAvqbcntQ "Ansible application")

