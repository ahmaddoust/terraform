terraform {
  backend "s3" {
    encrypt = true
    bucket = "ahmad-terraform"
    key    = "us-east-1/dev/common/vpc/tf.state"
    region = "us-east-1"
  }
}
