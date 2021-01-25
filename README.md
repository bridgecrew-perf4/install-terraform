# Install Terraform

[Terraform](https://www.terraform.io/) is a very useful tool to create and manage infrastructure in the cloud.

Some operating systems have package managers that allows to install `terraform` automatically (e.g. [brew](https://brew.sh/) on macOS). But if you dont' want to use a package manager, you can run one of these scripts.

## Linux based

**NOTE:** It expects that `unzip` and `curl` tools are already installed.

### How to use?

```bash
curl -fsSL https://raw.githubusercontent.com/hugo-paredes/install-terraform/master/linux.sh | bash -s 0.14.5
