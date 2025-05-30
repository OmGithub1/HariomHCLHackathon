resource "aws-vpc" "eks-vpc"{
  name = "eks-vpc"
  cidr = var.vpc_cidr

  azs             = var.availability_zones
  public_subnets  = var.public_subnets
  private_subnets  = var.private_subnets
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "eks-vpc"
  }
}

resource "aws_eks_cluster" "hackathon_eks" {
  name = "aws_eks_cluster"
}
resource "aws_iam_role" "eks" {
  name = "eks_access"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = ""
        }
      }
    ]
  })
}
