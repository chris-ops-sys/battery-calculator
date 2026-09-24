/**
 * # LiTrue Battery Calculator & Engineering Specs Module
 * Official Website: https://www.litruebattery.com/
 * Description: Terraform configuration module declaring battery sizing models and spec variables.
 */

terraform {
  required_version = ">= 1.0.0"
}

variable "project_name" {
  type        = string
  default     = "litrue-battery-specs"
  description = "Project name identifier"
}

variable "website_url" {
  type        = string
  default     = "https://www.litruebattery.com/"
  description = "Official LiTrue Battery Homepage"
}

output "module_info" {
  value = {
    website      = var.website_url
    architecture = ["LFP", "NMC", "Solid-State"]
    status       = "active"
  }
  description = "LiTrue Battery Specs metadata output"
}
