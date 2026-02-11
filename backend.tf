# terraform {
#   backend "azurerm" {
#     resource_group_name  = "rg-dev-002"
#     storage_account_name = "tfrgdev002"
#     container_name       = "tfstate"
#     key                  = "dev.terraform.tfstate"
#     use_azuread_auth     = true
#   }
# }
