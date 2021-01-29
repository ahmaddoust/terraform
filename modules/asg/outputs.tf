# output "alb-sg" {
#     value = aws_security_group.alb-sg.id
# }

# output "hlth_chk_path" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.hlth_chk_path //
# }

# output "shortname" {
#     value = aws_autoscaling_group.aws-asg.id
# }

output "dns_name" {
    value = aws_lb.aws-lb-blue.dns_name
}

output "zone_id" {
    value = aws_lb.aws-lb-blue.zone_id
}

# output "env" {
#     value = aws_lb.aws-lb.id
# }

# output "alb_sg-green" {
#     value = aws_security_group.alb-sg.id 
# }


# output "private_server_ami"{
#     value = aws_launch_configuration.aws-lc.id 
# }

# output "instance_type" {
#     value = aws_launch_configuration.aws-lc.id //module.aws-lc.instance_type //
# }

# output "key_name" {
#     value = aws_launch_configuration.aws-lc.id //module.aws-lc.key_name //
# }

# output "vpc_id" {
#     value = aws_security_group.alb_sg.id  
# }

# output "vpc_public_subnets" {
#     value = aws_lb.aws-lb.id 
# }
# output "vpc_public_subnets" {
#     value = aws_lb.aws-lb.id 
# }

# output "vpc_zone_identifier" {
#     value = aws_autoscaling_group.aws-asg-blue.id
# }
# output "vpc_zone_identifier" {
#     value = aws_autoscaling_group.aws-asg-green.id
# }

# output "user_data" {
#     value = aws_launch_configuration.aws-lc.id
# }

# output "vpc_cidr" {
#     value = aws_security_group.private-server-sg.id 
# }

# output "enable_green_application" {
#     value = aws.lb.aws-lb.enable_green_application 
#     description = "Default: false."
# }

# output "private-server-sg-port" {
#     value = aws_security_group.private-server-sg-blue.id 
# }

# output "hlth_chk_healthy" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.hlth_chk_healthy //
# }

# output "hlth_chk_unhealthy" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.hlth_chk_unhealthy //
# }

# output "hlth_chk_timeout" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.hlth_chk_timeout //
# }

# output "hlth_chk_matcher" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.hlth_chk_matcher //

# }

# output "lb-name" {
#     value = aws_lb_target_group.aws_lb_tg.id 
# }

# output "test-server-lb-name" {
#     value = aws_lb.aws-lb.id 
# }

# output "alb_sg_name" {
#     value = aws_security_group.alb_sg.id
# }

# output "private_server_sg_name" {
#     value = aws_security_group.private-server-sg.id
# }

# output "aws-lb-tg-name" {
#     value = aws_lb_target_group.aws_lb_tg.id
# }

# output "aws-lc-name" {
#     value = aws_launch_configuration.aws-lc.id 
# }
# output  "lb_sg_from_port" {
#     value = aws_security_group.alb_sg.id
# }

# output "lb_sg_to_port" {
#     value = aws_security_group.alb_sg.id 
# }

# output "lb_listener_port" {
#     value = aws_lb_listener.aws-lb.id 
#     description = "The port that the AWS Application Load Balancer listens on. Default: 80"
# }

# output "lb_listener_protocol" {
#     value = aws_lb_listener.aws-lb.id  
#     description = "The protocol that the AWS Load Balancer listens on. Default: HTTP"
# }

# output "outbound_ip_server" {
#     value = aws_security_group.alb_sg.id //module.alb-sg.outbound_ip_server //
#     description = "List of CIDRs than can access to the server. Default : 0.0.0.0/0"
    
# }

# output "asg_min_size" {
#     value = aws_autoscaling_group.aws-asg.id //module.aws-asg.asg_min_size //
# }

# output "asg_max_size" {
#     value = aws_autoscaling_group.aws-asg.id //module.aws-asg.asg_max_size //
# }

# output "health_chk_type" {
#     value = aws_autoscaling_group.aws-asg.id //module.aws-asg.health_chk_type //
#    //default = ["instane","ELB"]
# }

# output "health_chk_gp" {
#     value = aws_autoscaling_group.aws-asg.id //module.aws-asg.health_chk_gp //
#     description = "Health check grace period. Default: 300" 
# }

# output "asg_des_cap" {
#     value = aws_autoscaling_group.aws-asg.id //module.aws-asg.asg_des_cap //
#     description = "ASG desired capacity"
# }

# output "force_delete" {
#     value = aws_autoscaling_group.aws-asg.id //module.aws-asg.force_delete //
#     description = "ASG option to force delete." //Default: ["true","false"]
# }

# output "create_b4_destroy" {
#     value = aws_autoscaling_group.aws-asg.id //module.aws-asg.creat
#     description = "ASG lifecycle option." // Default: ["true","false"]"
# }

# output "bastion_from_port" { 
#     value = aws_security_group.private-server-sg.id //module.private-server-sg.bastion_from_port //
# }

# output "bastion_to_port" { 
#     value = aws_security_group.private-server-sg.id //module.private-server-sg.bastion_from_port //
# }

# output "private_from_port" {
#     value = aws_security_group.private-server-sg.id //module.private-server-sg.private_from_port //
# }

# output "private_to_port" {
#     value = aws_security_group.private-server-sg.id //module.private-server-sg.private-to-port //
# }

# output "outbound_ip_server" {
#     value = aws_security_group.private-server-sg.id
#     description = "List of CIDRs than can access to the server. Default : 0.0.0.0/0"
#     type        = list(string)
# }

# output "lb_tg_port" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.lb_tg_port //
# }

# output "lb_sg_ingress_protocol" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.lb_sg_ingress_protocol //
# }

# output "hlth_chk_enabled" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.hlth_chk_enabled //
# }

# output "hlth_chk_interval" {
#     value = aws_lb_target_group.aws_lb_tg.id //module.aws-lb-tg.hlth_chk_interval //
# }