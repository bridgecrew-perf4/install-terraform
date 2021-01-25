# Install Terraform

[Terraform](https://www.terraform.io/) is a very useful tool to create and manage infrastructure in the cloud.

Some operating systems have package managers that allows to install `terraform` automatically (e.g. (brew)[https://brew.sh/] on macOS). But if you dont' want to use a package manager, you can run one of these scripts.

## Linux based

**NOTE:** It expects that `unzip` and `wget` tools are already installed.

curl -fsSL
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
