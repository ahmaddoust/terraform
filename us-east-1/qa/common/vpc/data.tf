# data "terraform_remote_state" "vpc" {
#   backend = "s3"

#   config = {
#     bucket = "ahmad-terraform"
#     key    = "us-west-1/qa/vpc/tf.state"
#     region = "us-east-1"
#   }
# }

# data "terraform_remote_state" "ec2-cluster" {
#   backend = "s3"

#   config = {
#     bucket = "ahmad-terraform"
#     key    = "us-west-1/qa/vpc/tf.state"
#     region = "us-east-1"
#   }
# }