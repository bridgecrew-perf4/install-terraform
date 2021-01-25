# Install Terraform

## Linux based

Script that installs `terraform` in a Linux instance. It expects that `unzip` and `wget` tools are already installed.
Specify the version by passing the terraform as a parameter or by setting the environment variable TF_VERSION

How to use?

  1) Download the bash script to a local folder.
  2) Set the environment variable TF_VERSION to the desired version
     or pass the version as a parameter to the script.
     $ export TF_VERSION=0.12.29
     $ ./install_terraform.sh
     OR
     $ ./install_terraform.sh 0.12.29
OR
1) 
