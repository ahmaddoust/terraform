data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "ahmad-terraform"
    key    = "us-east-1/qa/common/vpc/tf.state"
    region = "us-east-1"
  }
}

data "aws_ami" "ec2-ami" {
  most_recent = true
  owners = ["self"] # Canonical

    filter {
        name   = "tag:Name"
        values = ["ahmad-packer"]

    }
    filter {
        name   = "tag:Version"
        values = ["woof"]
        }
}

data "template_file" "cloud-config" {
  template = file("${path.module}/userdata.tpl")
}

data "aws_acm_certificate" "issued" {
  domain   = "*.ahmaddoust.com"
  statuses = ["ISSUED"]
}

data "aws_route53_zone" "selected" {
  name         = "ahmaddoust.com"
  private_zone = false
}


