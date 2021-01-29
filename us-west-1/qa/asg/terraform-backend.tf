terraform {
  backend "s3" {
    encrypt = true
    bucket = "ahmad-terraform"
    key    = "us-west-1/qa/asg/tf.state"
    region = "us-east-1"
  }
}