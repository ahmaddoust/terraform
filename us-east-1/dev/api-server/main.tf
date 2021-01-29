provider "aws" {
    region = var.region
}
#main
module "my_asg" {
    source = "../../../modules/asg"
    region                  = var.region
    env                     = var.env 
    vpc_name                = var.vpc_name 
    certificate_arn         = data.aws_acm_certificate.issued.arn 
    vpc_cidr                = data.terraform_remote_state.vpc.outputs.vpc_cidr 
    vpc_id                  = data.terraform_remote_state.vpc.outputs.vpc_id
    vpc_zone_identifier     = data.terraform_remote_state.vpc.outputs.vpc_private_subnets
    private_server_ami      = data.aws_ami.ec2-ami.id 
    private_server_ami_green = data.aws_ami.ec2-ami-green.id 
    user_data               = data.template_file.cloud-config.rendered
    vpc_public_subnets      = data.terraform_remote_state.vpc.outputs.vpc_public_subnets
    hlth_chk_path           = var.hlth_chk_path
    health_chk_type         = var.health_chk_type
    health_chk_gp           = var.health_chk_gp
    force_delete            = var.force_delete
    lb_tg_port              = var.lb_tg_port
    instance_type           = var.instance_type
    key_name                = var.key_name
    shortname               = var.shortname
    asg_max_size            = 4
    asg_min_size            = 2
    asg_des_cap             = 2
    asg_max_size_green      = 0
    asg_min_size_green      = 0
    asg_des_cap_green       = 0
    
     
}
 resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = var.url   
  type    = "A" 
#   ttl     = "300" 
  
  alias {
    name                   = module.my_asg.dns_name 
    zone_id                = module.my_asg.zone_id 
    evaluate_target_health = true
  }
  lifecycle { 
      create_before_destroy = true 
    }

}


    # private-server-sg-port  = var.private-server-sg-port
    # lb_listener_port        = var.lb_listener_port
    # lb_listener_protocol    = var.lb_listener_protocol
    # bastion_port            = var.bastion_port
    # private_from_port       = var.private_from_port 
    # private_to_port         = var.private_to_port
    # outbound_ip_server      = var.outbound_ip_server
    # lb_tg_port              = var.lb_tg_port 
    # lb_sg_ingress_protocol  = var.lb_sg_ingress_protocol
    # hlth_chk_enabled        = var.hlth_chk_enabled
    # hlth_chk_interval       = var.hlth_chk_interval
    # hlth_chk_path           = var.hlth_chk_path
    # hlth_chk_healthy        = var.hlth_chk_healthy
    # hlth_chk_unhealthy      = var.hlth_chk_unhealthy
    # hlth_chk_timeout        = var.hlth_chk_timeout
    # hlth_chk_matcher        = var.hlth_chk_matcher
    # lb_sg_from_port         = var.lb_sg_from_port
    # lb_sg_to_port           = var.lb_sg_to_port
    # alb_sg_name             = var.alb_sg_name 
    # private_server_sg_name  = var.private_server_sg_name
    # test-server-lb-name   = var.test-server-lb-name 
    # lb-name                 = var.lb-name
    # asg_name                = var.asg_name  
    # aws-lb-tg-name          = var.aws-lb-tg-name
    # aws-lc-name             = var.aws-lc-name 
     






















