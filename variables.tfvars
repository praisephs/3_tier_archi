#resource group name
resource-group-name = "3_tier_RG"

#location
location = "eastus"

#subscription ID
subscription_id = "117d4bba-585e-4c3e-9dc9-b57586df802b"

#virtual network
vnet_name     = "3-tier-vnet"
address_space = ["10.0.0.0/16"]

#subnet
subnets = {
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