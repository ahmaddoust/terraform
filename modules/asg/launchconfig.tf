
resource "aws_launch_configuration" "aws-lc-blue" {
    name_prefix = "aws-lc-blue-${var.env}" //"aws-1c" 
    image_id = var.private_server_ami
    instance_type = var.instance_type //"t2.micro"
    key_name = var.key_name 
    security_groups = [aws_security_group.private-server-sg.id]
    user_data = var.user_data //data.template_file.cloud-config.rendered
    

    lifecycle {
    create_before_destroy = true
  }
  
}

resource "aws_launch_configuration" "aws-lc-green" {
    name_prefix = "aws-lc-green-${var.env}" //"aws-1c" 
    image_id = var.private_server_ami_green
    instance_type = var.instance_type  //"t2.micro"
    key_name = var.key_name
    security_groups = [aws_security_group.private-server-sg.id]
    user_data = var.user_data //data.template_file.cloud-config.rendered
    
  
    
    # Has_Toggle = var.enable_green_application 
  
  
    lifecycle {
    create_before_destroy = true
  }
  
}
resource "aws_security_group" "private-server-sg" {
  name        = "private-server-sg" //private_server_sg_name
  description = "Allow ssh inbound traffic"
  vpc_id      =  var.vpc_id  //data.terraform_remote_state.vpc.outputs.vpc_id 
                            
  
  ingress {
    description = "SSH from Bastion"
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] //[data.terraform_remote_state.vpc.outputs.vpc_cidr]
  }
  
  ingress {
    description = "custom port"
    from_port   = "3000"
    to_port     = "3000"
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr] //data.terraform_remote_state.vpc.outputs.vpc_cidr]
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

#   resource "aws_security_group" "private-server-sg-green" {
#   name        = "private-server-sg-green"-var.env //private_server_sg_name
#   # description = "Allow ssh inbound traffic"
#   vpc_id      =  "private-server-sg-green"-var.vpc_id  //data.terraform_remote_state.vpc.outputs.vpc_id 
  
#   ingress {
#     description = "SSH from Bastion"
#     from_port   = 22 
#     to_port     = 22 
#     protocol    = "tcp"
#     cidr_blocks = "private-server-sg-green"-[var.vpc_cidr] //[data.terraform_remote_state.vpc.outputs.vpc_cidr]
#   }
  
#   ingress {
#     description = "custom port"
#     from_port   = "3000"
#     to_port     = "3000"
#     protocol    = "tcp"
#     cidr_blocks = "private-server-sg-green"-[var.vpc_cidr] //data.terraform_remote_state.vpc.outputs.vpc_cidr]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#     tags = {
#       Name = "ssh-port"
#       }
      
#       # Has_Toggle = var.enable_green_application
  
# }