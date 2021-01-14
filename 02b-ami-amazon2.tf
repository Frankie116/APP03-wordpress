# ---------------------------------------------------------------------------------------------------
# version  1.4
# Library: https://github.com/Frankie116/my-library.git
# Creates a new standard amazon linux ami
# ---------------------------------------------------------------------------------------------------

# req:
# 9b-random-string.tf - random_string.my-random-string.result
# variables.tf        - var.my-project-name
# variables.tf        - var.my-environment


data "aws_ami" "my-ami-amazon2" {
  most_recent            = true
  owners                 = ["amazon"]
  filter {
    name                 = "name"
    values               = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  tags                   = {
    Name                 = "my-ami-amazon2-${random_string.my-random-string.result}"
    Project              = var.my-project-name
    Environment          = var.my-environment
    Terraform            = "true"
  }
}





