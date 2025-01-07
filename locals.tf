locals {
  subnets = {
    web_subnet = {
      name          = "web-subnet"
      address_space = "10.0.1.0/24"
    }

    app_subnet = {
      name          = "app-subnet"
      address_space = "10.0.2.0/24"
    }

    database_subnet = {
      name          = "database-subnet"
      address_space = "10.0.3.0/24"
    }
  }
}