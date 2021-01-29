output "vpc_cidr" {
    value = module.vpc.vpc_cidr_block
}

output "vpc_id" {
    value = module.vpc.vpc_id
}

output "vpc_private_subnets" {
    value = module.vpc.private_subnets

}
output "vpc_public_subnets" {
    value = module.vpc.public_subnets
}

output "vpc_azs" {
    value = module.vpc.azs
}

output "bastion_ami" {
    value = module.ec2_cluster.id 
}

output "incoming_ip_bastion" {
    value = aws_security_group.bastion_sg.id
}

output "outbound_ip_server" {
    value = aws_security_group.bastion_sg.id 
}

output "bastion_port" { 
    value = aws_security_group.bastion_sg.id
}

output "bastion_sg_ingress_protocol" {
    value = aws_security_group.bastion_sg.id
}

