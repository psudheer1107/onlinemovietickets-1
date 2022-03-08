terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
#  subscription_id = ""
}

terraform {
    backend "azurerm" {
        resource_group_name  = "Terrafrom_statefile"
        storage_account_name = "onlinemovieticket"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
}


#variable "imagebuild" {
#  type        = string
#  description = "Latest Image Build"
#}

resource "azurerm_resource_group" "tf_test" {
  name = "tfmainrg"
  location = "East US"
}

resource "azurerm_container_group" "tfcg_test" {
  name                      = "onlinemovieticket"
  location                  = azurerm_resource_group.tf_test.location
  resource_group_name       = azurerm_resource_group.tf_test.name

  ip_address_type     = "public"
  dns_name_label      = "onlinemovieticketwa"
  os_type             = "Linux"

  container {
      name            = "onlinemoviephp"
      image           = "sudheer1107/php:2.0"
        cpu             = "1"
        memory          = "1"

        ports {
            port        = 3000
            protocol    = "TCP"
        }
  }
  container {
      name            = "onlinemoviemysql"
      image           = "sudheer1107/mysql:2.0"
        cpu             = "1"
        memory          = "1"

        ports {
            port        = 3306
            protocol    = "TCP"
        }
  }

}
