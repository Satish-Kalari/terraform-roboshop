Create one ansible server (Line 192 in ec2.tf)

this server will provision ansible playbooks to all ec2 (like web, mongodb etc.)

ansible need port 22 connection for ec2 for provisioning 

***so instead of creating new sg for ansible we will use, VPN sg which all ready has port 22 connection for all ec2*** 


This server use VPN connection for provisioning playbooks to all the ec2 via ec2-provision.sh file

