# Creating VPC using Terraform and deploying via Github Actions.

VPC -> Virtual Private Cloud.
=> Create VPC
=> Create Subnets
=> Create EC2 instances
=> Create Route Tbale
=> Create Load Balancer
=> Create Internet Gateway

## Project Execution FLow

VSCode -> Terraform -> Github -> Github_Actions -> AWS
=> Branching Stragety
    -> Main
    -> Feature
=> Will Trigger Actions 
=> Terraform 
    -> Init
    -> Plan 
    -> Apply

## Terraform Code Structure

        |->/Terraform
            |-> Modules
                |-> VPC Module
                |-> EC2 Module
                |-> Security Group Module
                |-> Load Balancer Module
            |-> main.tf 
            |-> Varibles.tf   
            |-> terraform.tf
            |-> provider.tf
        |-> .github/Workflows/deploy.yml[All details of CI workflow]
    
## PREREQUISITES
-> AWS account
-> Github account
-> Git in local
-> Terraform in local
-> AWS CLI configured
-> Access Key for AWS User