variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "demo-monitor-rg"
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

variable "project_name" {
  description = "Project name for resources"
  type        = string
  default     = "demo-monitor"
}
