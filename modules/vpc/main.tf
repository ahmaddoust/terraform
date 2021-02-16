

provider "aws" {
  region = var.region
}
  
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"
  # insert the 14 required variables here

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs 
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  enable_vpn_gateway = var.enable_vpn_gateway

  # tags = {
  #   Terraform = "true"
  #   Environment = "dev"
  # }

}


# module "ec2_cluster" {
#   source                 = "terraform-aws-modules/ec2-instance/aws"
#   version                = "~> 2.0"

#   name                   = "bastion_server"
#   instance_count         = 1

#   ami                    = var.bastion_ami
#   instance_type          = "t2.micro"
#   key_name               = "baskey"
#   monitoring             = false
#   vpc_security_group_ids = [aws_security_group.bastion_sg.id]
#   subnet_id              = element(module.vpc.public_subnets, 0) 

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }

# resource "aws_security_group" "bastion_sg" {
#   name        = "bastion_sg"
#   description = "Allow ssh inbound traffic"
#   vpc_id      =   module.vpc.vpc_id 
#   ingress {
#     description = "SSH from Bastion"
#     from_port   = var.bastion_port//22
#     to_port     = var.bastion_port //22
#     protocol    = var.bastion_sg_ingress_protocol//"tcp"
#     cidr_blocks = var.incoming_ip_bastion
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = var.outbound_ip_server
#   }

#   tags = {
#     Name = "bastion_sg"
#   }

# }

