variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  default = ["us-east-1a"]
}

variable "public_subnets" {
  default = ["10.0.1.0/24"]
}
variable "private_subnets" {
  default = ["10.0.2.0/24"]
}
