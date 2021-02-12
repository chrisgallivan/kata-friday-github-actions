#terraform remote state
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "remote" {
    organization = "KATA-FRIDAYS"
    workspaces {
      name = "kata-friday-github-actions"
    }
  }
}
