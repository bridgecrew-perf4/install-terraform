#!/bin/bash -x

TF_VERSION="${1:-}"

if [ -z "${TF_VERSION}" ]; then
  echo "ERROR: No version of Terraform specified."
  echo ""
  echo "./linux.sh 0.12.29"
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
