#!/bin/bash -x

#
# Script that installs `terraform` in a Linux instance. It expects that `unzip` and `wget` tools are already installed.
# Specify the version by passing the terraform as a parameter or by setting the environment variable TF_VERSION
#
# How to use?
#
#  1) Download the bash script to a local folder.
#  2) Set the environment variable TF_VERSION to the desired version
#     or pass the version as a parameter to the script.
#     $ export TF_VERSION=0.12.29
#     $ ./install_terraform.sh
#     OR
#     $ ./install_terraform.sh 0.12.29
#  OR
#  1) 
# 

TF_VERSION="${1:-`echo ${TF_VERSION}`}"

if [ -z "${TF_VERSION}" ]; then
  echo "ERROR: No version of Terraform specified."
  echo ""
  echo "export TF_VERSION=0.12.29"
  echo "./install_terraform.sh"
  exit 1
fi

echo "--------------------------------------------------------------------------------"
echo "The terraform version that's going to be installed is $TF_VERSION"

echo "--------------------------------------------------------------------------------"
echo "Create temporary installation folders"
mkdir -p /tmp/terraform && cd /tmp/terraform

echo "--------------------------------------------------------------------------------"
echo "Download terraform binary in ZIP format"
wget https://releases.hashicorp.com/terraform/"${TF_VERSION}"/terraform_"${TF_VERSION}"_linux_amd64.zip -O /tmp/terraform/terraform.zip

echo "--------------------------------------------------------------------------------"
echo "Unzip terraform.zip file"
unzip /tmp/terraform/terraform.zip -d /tmp/terraform/

echo "--------------------------------------------------------------------------------"
echo "Move the terraform binary to the bin folder"
sudo mv /tmp/terraform/terraform /usr/local/bin/

echo "--------------------------------------------------------------------------------"
echo "Confirm terraform version"
terraform -v

echo "--------------------------------------------------------------------------------"
echo "Cleanup"
sudo rm -rf /tmp/terraform
