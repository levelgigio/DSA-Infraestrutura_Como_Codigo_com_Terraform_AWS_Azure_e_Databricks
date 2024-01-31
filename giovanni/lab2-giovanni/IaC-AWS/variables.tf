variable "region" {
  description = "A região AWS onde a instância será criada"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "O tipo de instância a ser criada"
}

variable "ami" {
  description = "A Amazon Machine Image (AMI) a ser usada pela instância"
}

variable "vpcs" {
  description = "Lista de VPCs"
  type = list(string)
}

variable "subnets" {
  description = "Lista de subnets"
  type = list(string)
}