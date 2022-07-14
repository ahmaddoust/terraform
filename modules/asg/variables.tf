variable "region" {
    default = "us-east-1" 
}
variable "env" {}

variable "vpc_name" {}

variable "shortname" {}

variable "certificate_arn" {}

variable "vpc_public_subnets" {}

variable "vpc_id" {}

variable "vpc_zone_identifier" {}

variable "private_server_ami" {}

variable "user_data" {}

variable "vpc_cidr" {}

variable "hlth_chk_path" {}

variable "instance_type" {}

variable "key_name" {}

variable "asg_min_size" {}

variable "asg_max_size" {}

variable "health_chk_type" {}

variable "health_chk_gp" {
    description = "Health check grace period."
    default = "300"
}

variable "asg_des_cap" {
    description = "ASG desired capacity"
}

variable "force_delete" {
    description = "ASG option to force delete."
    default = ["true","false"]
}

variable "lb_tg_port" {}

variable "asg_max_size_green" {}

variable "asg_min_size_green" {}

variable "asg_des_cap_green" {}

variable "private_server_ami_green" {}

# variable "alb-sg" {}

# variable "enable_green_application" {
#     default = false
# }

# variable "lb_listener_port" {
#     description = "The port that the AWS Application Load Balancer listens on."
#     default = "80"
# }

# variable "lb_listener_protocol" {
#     description = "The protocol that the AWS Load Balancer listens on."
#     default = "HTTP"
# }
# variable "create_b4_destroy" {
#     description = "ASG lifecycle option."
#     default = ["true","false"]
# }

# variable "instance_type" {}

# variable "key_name" {}

# variable "bastion_port" {}

# variable "private_from_port" {}

# variable "private_to_port" {}

# variable "outbound_ip_server" {
#     description = "Default : 0.0.0.0/0"
#     type        = list(string)
# }

# variable "lb_tg_port" {
#     description = "The AWS load balancer target group port."
# }

# variable "lb_sg_ingress_protocol" {}

# variable "hlth_chk_enabled" {
#     default = "true"
#     description = "For target group."
# } 

# variable "hlth_chk_interval" {
#     default = "300"
# }

# variable "hlth_chk_path" {}

# variable "hlth_chk_healthy" {
#     description = "Target group health check healthy threshold."
# }

# variable "hlth_chk_unhealthy" {
#     description = "Target group health check unhealthy threshold."
# }

# variable "hlth_chk_timeout" {}

# variable "hlth_chk_matcher" {}

# variable "lb_sg_from_port" {}

# variable "lb_sg_to_port" {}

# variable "vpc_azs" {}

# variable "vpc_private_subnets" {}

# variable "lb-name" {} 

# variable "test-server-lb-name" {}

# variable "private_server_sg_name" {}

# variable "aws-lb-tg-name" {}

# variable "aws-lc-name" {}