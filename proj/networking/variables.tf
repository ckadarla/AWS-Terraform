##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  default = "us-east-1"
}

variable "consul_address" {
  type        = string
  description = "Address of Consul server"
  default     = "127.0.0.1"
}

variable "consul_port" {
  type        = number
  description = "Port Consul server is listening on"
  default     = "8500"
}

variable "consul_datacenter" {
  type        = string
  description = "Name of the Consul datacenter"
  default     = "dc1"
}

variable "private_subnets"   {  
  default = ["10.0.10.0/24", "10.0.11.0/24"]
}

variable "public_subnets"  {
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "subnet_count" {
  default = 2 
}
