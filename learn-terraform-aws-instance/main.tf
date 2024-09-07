terraform {
  backend "remote" {
    organization = "kabirgaire"
    workspaces {
      name = "aws-workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  // Tokyo ubuntu 22.04 LTS EC2 AMI
  ami           = "ami-03d9b1f62c7b99017"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
