variable "region" {
    default = "us-east-1" 
}
variable "env" {}

variable "vpc_name" {}

variable "shortname" {}

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

variable "url" {}

variable "lb_tg_port" {}

variable "asg_max_size_green" {}

variable "asg_min_size_green" {}

variable "asg_des_cap_green" {}

# variable "alb-sg" {}

# variable "private_server_ami_green" {}

# variable "certificate_arn" {}

# variable "vpc_public_subnets" {}

# variable "vpc_id" {}

# variable "vpc_zone_identifier" {}

# variable "private_server_ami" {}

# variable "user_data" {}

# variable "vpc_cidr" {}

# variable "enable_green_application" {
#     default = false
# }

# variable "certificate_arn" {}


# variable "vpc_public_subnets" {}

# variable "vpc_id" {}

# variable "vpc_zone_identifier" {}

# variable "private_server_ami" {}

# variable "user_data" {}

# variable "vpc_cidr" {}