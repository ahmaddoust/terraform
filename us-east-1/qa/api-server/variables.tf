variable "region" {
    default = "us-east-1" 
}

variable "vpc_name" {}

variable "lb_listener_port" {
    description = "The port that the AWS Application Load Balancer listens on."
    default = "80"
}

variable "lb_listener_protocol" {
    description = "The protocol that the AWS Load Balancer listens on."
    default = "HTTP"
}

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

# variable "create_b4_destroy" {
#     description = "ASG lifecycle option."
#     default = ["true","false"]
# }

variable "instance_type" {}

variable "key_name" {}

variable "bastion_port" {}

variable "private_from_port" {}

variable "private_to_port" {}

variable "outbound_ip_server" {
    description = "List of CIDRs than can access to the server. Default : 0.0.0.0/0"
    type        = list(string)
    default = ["0.0.0.0/0"]
}

variable "lb_tg_port" {
    description = "The AWS load balancer target group port."
}

variable "lb_sg_ingress_protocol" {}

variable "hlth_chk_enabled" {
    default = "true"
    description = "For target group."
} 

variable "hlth_chk_interval" {
    default = "300"
}

variable "hlth_chk_path" {}

variable "hlth_chk_healthy" {
    description = "Target group health check healthy threshold."
}

variable "hlth_chk_unhealthy" {
    description = "Target group health check unhealthy threshold."
}

variable "hlth_chk_timeout" {}

variable "hlth_chk_matcher" {}

variable "lb_sg_from_port" {}

variable "lb_sg_to_port" {}

# variable "vpc_cidr" {}

# variable "vpc_id" {}

# variable "vpc_zone_identifier" {}

# variable "private_server_ami" {}

# variable "user_data" {}

variable "lb-name" {} 

variable "test-server-lb-name" {}

variable "alb_sg_name" {}

variable "private_server_sg_name" {}

variable "shortname" {}

variable "asg_name" {}

variable "aws-lb-tg-name" {}


variable "aws-lc-name" {}

variable "url" {} 