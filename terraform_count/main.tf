terraform {
    required_providers {
        azurerm= {
            source="hashicorp/azurerm"
            version="4.70.0"

        }
    }
}
provider "azurerm"{
    features{}
}

resource "azurerm_resource_group" "rg_count" {
    count=2
    name="rg-yogi-${var.rg_test[count.index]}"
    # name="var.rg_test${count.index}"
    location="eastus"
  
}
