provider "aws" {
  region = var.region
}

resource "aws_lb" "aws-lb-blue" {
  name               = "lb-blue-${var.env}"  //var.test-server-lb-name
  internal           = false
  load_balancer_type = "application"  
  security_groups    = [aws_security_group.alb-sg.id] 
  subnets            = var.vpc_public_subnets 

  enable_deletion_protection = false

  tags = {
    Environment = "dev" 
  }
}

resource "aws_lb_listener" "aws-lb-blue" { 
  load_balancer_arn = aws_lb.aws-lb-blue.arn 
  port              = "443" 
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  
  certificate_arn   = var.certificate_arn 


  default_action  {
    type = "forward" 
    forward { 
      target_group {
        arn = aws_lb_target_group.aws-lb-tg-blue.arn 
      }
      target_group {
        arn = aws_lb_target_group.aws-lb-tg-green.arn
      }
    }
    
    
     
    }
}

resource "aws_lb_listener_rule" "static-blue" {
  listener_arn = aws_lb_listener.aws-lb-blue.arn
  # priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.aws-lb-tg-blue.arn
  }

  condition {
    path_pattern {
      values = ["/v1"] //var.path_pattern_blue
    }
  }
}

  resource "aws_lb_listener_rule" "static-green" {
  listener_arn = aws_lb_listener.aws-lb-blue.arn
  # priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.aws-lb-tg-green.arn
  }

  condition {
    path_pattern {
      values = ["/v2"] //var.path_pattern_green
    }
  }
  }


resource "aws_security_group" "alb-sg" {
  name        = "alb-sg-${var.env}" 
  description = "Allow ssh inbound traffic"
  vpc_id      =  var.vpc_id 

  ingress {
    description = "custom port-blue"
    from_port   = 443 //var.lb_sg_from_port //80
    to_port     = 443  //var.lb_sg_to_port //80 
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-port"
  }
}


