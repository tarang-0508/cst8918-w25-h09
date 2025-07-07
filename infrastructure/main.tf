provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-aks-h09"
  location = "Canada Central"
}

resource "azurerm_kubernetes_cluster" "app" {
  name                = "tarang-aks-h09"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "tarang-aks"

  default_node_pool {
    name       = "default"
    node_count = 1
    min_count  = 1
    max_count  = 3
    vm_size    = "Standard_B2s"
    type       = "VirtualMachineScaleSets"
    enable_auto_scaling = true
  }

  identity {
    type = "SystemAssigned"
  }

  kubernetes_version = "1.29.2"

  tags = {
    environment = "dev"
  }
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.app.kube_config_raw
  sensitive = true
}
