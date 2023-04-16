variable "prefix" {
  description = "Prefix"
  default = "udacity"
}

variable "environment"{
  description = "environment"
  default = "test"
}

variable "resourceGroup" {
  description = "Name of resource"
  default     = "Azuredevops"
}

variable "location" {
  description = "Azure Region"
  default = "Australia East" 
}

variable "username"{
  default = "username"
}

variable "password"{
  default= "Password123$$$"
}

variable "server_names"{
  type = list
  default = ["uat","int"]
}

variable "packerImageId"{
  default = "80ae9245-22ea-4f16-a42f-d5cebd7aac99"
}

variable "vmCount"{
  default = "2"
}