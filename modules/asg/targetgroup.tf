resource "aws_lb_target_group" "aws-lb-tg-blue" {
  name                = "aws-lb-tg-blue-${var.env}" 
  port                 = "3000" //"aws-lb-tg-blue"-var.lb_tg_port
  protocol             = "HTTP" //aws-lb-tg-blue"-var.lb_sg_ingress_protocol 
  vpc_id               = var.vpc_id //data.terraform_remote_state.vpc.outputs.vpc_id 
  health_check {
        enabled             = true     //var.hlth_chk_enabled 
        interval            = 30    //var.hlth_chk_interval 
        path                = var.hlth_chk_path    
        port                = var.lb_tg_port //"3000"
        healthy_threshold   = 3 //"aws-lb-tg-blue"-var.hlth_chk_healthy 
        unhealthy_threshold = 3 //"aws-lb-tg-blue"-var.hlth_chk_unhealthy 
        timeout             = 6 //"aws-lb-tg-blue"-var.hlth_chk_timeout
        protocol            = "HTTP" //var.lb_sg_ingress_protocol 
        matcher             = "200" //var.hlth_chk_matcher 
      } 
  #     lifecycle {
  #   create_before_destroy = true
  #   # ignore_changes = "name"
  # }
}

resource "aws_lb_target_group" "aws-lb-tg-green" {
  name                 = "aws-lb-tg-green-${var.env}"
  port                 = "3000" //aws-lb-tg-green"-var.lb_tg_port
  protocol             = "HTTP"//"aws-lb-tg-green"-var.lb_sg_ingress_protocol 
  vpc_id               = var.vpc_id //data.terraform_remote_state.vpc.outputs.vpc_id 
  health_check {
        enabled             = true //var.hlth_chk_enabled 
        interval            = 30 //var.hlth_chk_interval 
        path                = var.hlth_chk_path 
        port                = var.lb_tg_port //"aws-lb-tg-green"-var.lb_tg_port 
        healthy_threshold   = 3 //"aws-lb-tg-green"-var.hlth_chk_healthy 
        unhealthy_threshold = 3 //"aws-lb-tg-green"-var.hlth_chk_unhealthy 
        timeout             = 6 //"aws-lb-tg-green"-var.hlth_chk_timeout 
        protocol            = "HTTP" //var.lb_sg_ingress_protocol 
        matcher             = "200" //var.hlth_chk_matcher 
      } 
  #     lifecycle {
  #   create_before_destroy = true
  #   # ignore_changes = ["name"]
  # } 
}