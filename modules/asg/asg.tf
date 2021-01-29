  
resource "aws_autoscaling_group" "aws-asg-blue" {
  name                      = "asg-blue-${var.env}" //asg_name 
  launch_configuration      = aws_launch_configuration.aws-lc-blue.name 
  min_size                  = var.asg_min_size //var.asg_min_size
  max_size                  = var.asg_max_size
  vpc_zone_identifier       = var.vpc_zone_identifier 
  health_check_grace_period = var.health_chk_gp
  health_check_type         = var.health_chk_type
  desired_capacity          = var.asg_des_cap
  force_delete              = var.force_delete 
  target_group_arns         = [aws_lb_target_group.aws-lb-tg-blue.arn]

  # lifecycle {
  #   create_before_destroy = true
  # }
  tags = [{
    key                 = "Name"  //multiple tags 
    value               = "blue-" 
    propagate_at_launch = true
    }]
}
  
  
resource "aws_autoscaling_group" "aws-asg-green" {
  name                      = "asg-green-${var.env}" //asg_name 
  launch_configuration      = aws_launch_configuration.aws-lc-green.name 
  min_size                  = var.asg_min_size_green //var.asg_min_size
  max_size                  = var.asg_max_size_green
  vpc_zone_identifier       = var.vpc_zone_identifier 
  health_check_grace_period = var.health_chk_gp
  health_check_type         = var.health_chk_type
  desired_capacity          = var.asg_des_cap_green
  force_delete              = var.force_delete 
  target_group_arns         = [aws_lb_target_group.aws-lb-tg-green.arn]

  # lifecycle {
  #   create_before_destroy = true
  # }
  tags = [{
    key                 = "Name" //multiple tags 
    value               = "green-" 
    propagate_at_launch = true
    }
  ]
    
      # Has_Toggle = var.enable_green_application
    
  
}
