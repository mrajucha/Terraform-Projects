variable "vpc_name" {
    type = string
  
}

variable "project_id" {
    type = string
  
}


variable "create_subnt" {
  type = bool
}
variable "routing_mode" {
    type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr_range" {
  type = string
}

variable "region" {
  type = string 
}