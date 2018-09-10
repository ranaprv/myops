variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "ap-south-1"
}

# ubuntu-trusty-14.04 (x64)
variable "aws_amis" {
  default = {
    "ap-south-1" = "ami-d783a9b8"
    "us-east-1"  = "ami-5f709f34"
    "us-west-2"  = "ami-7f675e4f"
  }
}
