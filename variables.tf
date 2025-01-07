variable "resource-group-name" {
  type        = string
  description = "Name of resource group"
  default     = "3_tier_RG"
}

variable "location" {
  type        = string
  description = "location of azure resources"
  default     = "eastus"

}

variable "subscription_id" {
  type        = string
  description = "subscription id for azure"
  default     = "117d4bba-585e-4c3e-9dc9-b57586df802b"

}

variable "vnet_name" {
  type    = string
  default = "3-tier-vnet"

}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]

}

variable "subnets" {
  type = map(object({
    name             = string
    address_prefixes = string
  }))

  default = {
    web_subnet = {
      name             = "web-subnet"
      address_prefixes = "10.0.1.0/24"

    }

    app_subnet = {
      name             = "app-subnet"
      address_prefixes = "10.0.2.0/24"
    }

    database_subnet = {
      name             = "database-subnet"
      address_prefixes = "10.0.3.0/24"
    }
  }

}