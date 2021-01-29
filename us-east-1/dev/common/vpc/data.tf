# data "aws_ami" "bastion_ami" {
#   executable_users = ["self"]
#   most_recent      = true
#   name_regex       = "^myami-\\d{3}"
#   owners           = ["amazon"]

#   filter {
#    name   = "name"
#    values = ["amzn-ami-*"]
#  }
# }