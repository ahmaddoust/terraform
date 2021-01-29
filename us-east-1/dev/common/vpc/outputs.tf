# output "vpc_azs" {
#     value = module.ahmad_vpc.vpc_azs
# }

output "vpc_private_subnets" {
    value = module.ahmad_vpc.vpc_private_subnets 
}

# output "bastion_ami" {
#     value = module.ahmad_vpc.bastion_ami
# }

# # output "scalegroup" {
# #     value = data.aws_ami.ec2-ami.id
# # }

output "vpc_id" {
    value = module.ahmad_vpc.vpc_id
}

output "vpc_cidr" {
    value = module.ahmad_vpc.vpc_cidr
}

output "vpc_public_subnets" {
    value = module.ahmad_vpc.vpc_public_subnets 
}

# output "incoming_ip_bastion" {
#     value = module.ahmad_vpc.incoming_ip_bastion 
#     description = "Private IP used for ingress of bastion security group."
# }

# output "outbound_ip_server" {
#     value = module.ahmad_vpc.outbound_ip_server
#     description = "List of CIDRs than can access to the bastion. Default : 0.0.0.0/0"
# }

# output "bastion_port" { 
#      value = module.ahmad_vpc.bastion_port
# }

# output "bastion_sg_ingress_protocol" {
#     value = module.ahmad_vpc.bastion_sg_ingress_protocol
# }
