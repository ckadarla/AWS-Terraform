
variable "region" {
  default = "us-east-1"
}

# Consul variables

variable "consul_address" {
  type        = string
  description = "Consul server"
  default     = "127.0.0.1"
}

variable "consul_port" {
  type        = number
  description = " Consul Server Port"
  default     = "8500"
}

variable "consul_datacenter" {
  type        = string
  description = "Consul datacenter"
  default     = "dc1"
}


# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "rds_username" {
  default     = "ddtuser"
  description = "Username"
}

variable "rds_password" {
  default     = "TerraformIsNumber1!"
  description = "password"
}
