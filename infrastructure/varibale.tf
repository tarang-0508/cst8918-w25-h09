variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region for resources"
  type        = string
  default     = "Canada Central"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}
