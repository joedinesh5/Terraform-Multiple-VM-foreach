
# variables for Azure provider

variable subscription_id {
    type = string
    default = "a40357a8-726c-4938-8ee2-29371c2dc906"
}
variable tenant_id {
  type = string
  default = "ca580105-19d1-4e9e-bd49-bb731b25a750"
}
variable client_id {
    type = string
    default = "3df76abb-eae9-4ec3-98d0-706e9bc050ce"
}
variable client_secret {
    type = string
    default = "client secret" 
}

# variables for resource group

variable rg {
    type = string
    default = "Joe_foreach1"
}
variable region {
    type = string
    default = "Central India"
}

# variables for vnet
variable vnet {
    type = string
    default = "Joe-vnet"
}

# Variables for subnet

variable subnet {
    type = string
    default = "Joe-subnet"
}

# Variable for nic

variable nic {
    type = string
    default = "Joe-nic"
} 

variable nic1 {
    type = string
    default = "Joe-nic1"
} 

variable nic2 {
    type = string
    default = "Joe-nic1"
}

variable nic_ip_con {
    type = string
    default = "Joenic"
}

variable nic_ip_con1 {
    type = string
    default = "Joenic1"
}

variable nic_ip_con2 {
    type = string
    default = "Joenic2"
}

# variables for disk size
/*
variable disk_size {
    type = string
    default = "Standard_B1s"
}
*/

variable "vm_map" {
    type = map(object({
      name = string
      size = string
      admin_password = string
      admin_username = string
    }))
    default = {
      "Joevm" = {
        admin_username = "Joeadmin"
        admin_password = "Joedinesh123!"
        name = "Joevm"
        size = "Standard_B1s"
      }
      "karthikvm" = {
        admin_username = "Karthikadmin"
        admin_password = "Karthik123!"
        name = "Karthikvm"
        size = "Standard_DS1_v2"
      }
      "gokulvm" = {
        admin_username = "Gokuladmin"
        admin_password = "Gokul123!"
        name = "Gokulvm"
        size = "Standard_B1s"
      }
    }
}
