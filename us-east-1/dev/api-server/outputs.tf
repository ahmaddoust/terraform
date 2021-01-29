# output "alb-sg"  {
#     value = module.my_asg.alb-sg
# }
# output "key_name" { 
#     value = module.my_asg.key_name 
# }

# output "vpc_cidr" {
#     value = module.my_asg.vpc_cidr
# }

# output "vpc_id" {
#     value = module.my_asg.vpc_id
# }

# output "vpc_zone_identifier" {
#     value = module.my_asg.vpc_zone_identifier
# }

# output "private_server_ami" {
#     value = module.my_asg.private_server_ami
# }

# output "user_data" {
#     value = module.my_asg.user_data
# }

# output "lb_listener_port" {
#     value = module.my_asg.lb_listener_port
#     description = "The port that the AWS Application Load Balancer listens on. Default: 80"
# }

# output "lb_listener_protocol" { 
#     value = module.my_asg.lb_listener_protocol 
#     description = "The protocol that the AWS Load Balancer listens on. Default: HTTP"
# }

# output "outbound_ip_server" {
#     value = module.my_asg.outbound_ip_server 
#     description = "List of CIDRs than can access to the server. Default : 0.0.0.0/0"
# }

# output "asg_min_size" {
#     value = module.my_asg.asg_min_size 
# }

# output "asg_max_size" {
#     value = module.my_asg.asg_max_size 
# }

# output "health_chk_type" {
#     value = module.my_asg.health_chk_type 
# }

# output "health_chk_gp" {
#     value = module.my_asg.health_chk_gp 
#     description = "Health check grace period. Default: 300" 
# }

# output "asg_des_cap" {
#     value = module.my_asg.asg_des_cap 
#     description = "ASG desired capacity"
# }

# output "force_delete" {
#     value = module.my_asg.force_delete 
#     description = "ASG option to force delete." //Default: ["true","false"]
# }

# output "create_b4_destroy" {
#     value = aws_autoscaling_group.aws-asg.id //module.aws-asg.creat
#     description = "ASG lifecycle option." // Default: ["true","false"]"
# }

# output "instance_type" {
#     value = module.my_asg.instance_type 
# }

# output "bastion_from_port" { 
#     value = module.my_asg.bastion_from_port 
# }

# output "bastion_to_port" { 
#     value = module.my_asg.bastion_from_port 
# }

# output "private_from_port" {
#     value = module.my_asg.private_from_port 
# }

# output "private_to_port" { 
#     value = module.my_asg.private_to_port 
# }

# output "outbound_ip_server" {
#     value = aws_security_group.private-server-sg.id
#     description = "List of CIDRs than can access to the server. Default : 0.0.0.0/0"
#     type        = list(string)
# }

# output "lb_tg_port" {
#     value = module.my_asg.lb_tg_port 
# }

# output "lb_sg_ingress_protocol" {
#     value = module.my_asg.lb_sg_ingress_protocol 
# }

# output "hlth_chk_enabled" {
#     value = module.my_asg.hlth_chk_enabled 
# }

# output "hlth_chk_interval" { 
#     value = module.my_asg.hlth_chk_interval 
# }

# output "hlth_chk_path" {
#     value = module.my_asg.hlth_chk_path 
# }

# output "hlth_chk_healthy" {
#     value = module.my_asg.hlth_chk_healthy 
# }

# output "hlth_chk_unhealthy" {
#     value = module.my_asg.hlth_chk_unhealthy 
# }

# output "hlth_chk_timeout" {
#     value = module.my_asg.hlth_chk_timeout 
# }

# output "hlth_chk_matcher" {
#     value = module.my_asg.hlth_chk_matcher 

# }