provider "aws" {
  region = var.region
 
}

module "ahmad_vpc" {
  source = "../../../../modules/vpc/"

  
  region                      = var.region 
  vpc_name                    = var.vpc_name
  vpc_cidr                    = var.vpc_cidr 
  vpc_azs                     = var.vpc_azs
  vpc_private_subnets         = var.vpc_private_subnets
  vpc_public_subnets          = var.vpc_public_subnets
  bastion_ami                 = var.bastion_ami //data.aws_ami.bastion_ami.id 
  incoming_ip_bastion         = var.incoming_ip_bastion
  outbound_ip_server          = var.outbound_ip_server
  bastion_port                = var.bastion_port 
  bastion_sg_ingress_protocol = var.bastion_sg_ingress_protocol


}


# terraform commands
# terraform destroy -target aws_instance.web-server-instance (this only destroys one resource)
# terraform apply -target "aws_instance..... same info" (this creates only one resrouce) 
# terraform output will output info after you do an apply 





