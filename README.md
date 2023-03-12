# This folder contains everything needed to create EC2 instance in AWS via TERRAFORM.

The main.tf file contains provider and EC2 VM resources 
and uses ${terraform.workspace} variable and logic to decide what
region to deploy in.

#The network.tf file spins up the network resources required by #the EC2 VM and uses ${terraform.workspace} variable to set their Names/IDs.
