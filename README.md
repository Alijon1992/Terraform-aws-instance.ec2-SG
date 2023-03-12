# This folder contains everything needed to create EC2 instance in AWS via TERRAFORM.

#The network.tf file launches the network resources needed by the EC2 VM and sets the Names/IDs of those resources using the $terraform.workspace variable.

The deop.tf file contains provider and EC2 VM resources 
and uses ${terraform.workspace} variable and logic to decide what
region to deploy in.


