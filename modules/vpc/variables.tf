variable "region" {
    default = "us-east-1" 
}

variable "vpc_name" {
}

variable "vpc_cidr" {
}

variable "vpc_azs" {
}

variable "vpc_private_subnets" {
}

variable "vpc_public_subnets" {
}

variable "bastion_ami" {
}

variable "incoming_ip_bastion" {
    description = "Private IP used for ingress of security group for bastion. "
}

variable "outbound_ip_server" {
    description = "Default : 0.0.0.0/0"
}
variable "bastion_port" {}

variable "bastion_sg_ingress_protocol" {}
