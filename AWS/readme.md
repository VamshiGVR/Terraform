# Terraform 
This Repo is used to learn terraform with AWS.



DOCUMENTATION: https://developer.hashicorp.com/terraform/tutorials

DOWNLOAD TERRAFORM CLI

=> Go to Offical terraform site.
=> Download the package
=> Unzip/Extract
=> Copy the path
=> Add the path in environment variables =>Path

# To Check installation

METHOD 1
=> open powershell window
=> do 'terraform -help'

METHOD 2
=> open command prompt
=> do 'terraform --version'


NEED TO HAVE AWS CLI
METHOD 1
=> install : https://awscli.amazonaws.com/AWSCLIV2.msi

METHOD 2
=> msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi
else 
=> msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi /qn


# To Check installation
=> open Command prompt/Windows powershell
=> change directory to installed file
=> do 'aws --version'




# AWS configuration
open command prompt
1) aws configure
2) enter aws access key adn secret acces key
   
# create keys in aws console=> IAM=> Security credentials =>Create access key



#TERRAFORM COMMANDS
=>terraform init
=>terraform plan
=>terraform apply
=>terraform destroy

For more do terraform -help







# References
1) Doc : https://developer.hashicorp.com/terraform/tutorials/aws
2) Youtube: https://www.youtube.com/watch?v=7xngnjfIlK4