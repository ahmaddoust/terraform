data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "ahmad-terraform"
    key    = "us-east-1/dev/common/vpc/tf.state"
    region = "us-east-1"
  }
}

data "aws_ami" "ec2-ami" {
  most_recent = true
  owners = ["self"] # Canonical

    filter {
        name   = "tag:Version"
        values = ["1"]

    }
    filter {
        name   = "tag:Env"
        values = ["dev"]
        }
}

data "aws_ami" "ec2-ami-green" {
  most_recent = true
  owners = ["self"] # Canonical

    filter {
        name   = "tag:Version"
        values = ["2"]

    }
    filter {
        name   = "tag:Env"
        values = ["dev"]
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

