# ---------------------------------------------------------------------------------------------------
# version  1.4
# Library: https://github.com/Frankie116/my-library.git
# Project: lab038-jenkins-cluster
# Author:  Frank Effrim-Botchey
# Purpose: Create a jenkins cluster behind an elb that is accessed by a registered route53 dns name
#          Provide SSH access, autoscaling, cloudwatch monitoring and alerting via sns msgs.
# ---------------------------------------------------------------------------------------------------

terraform {
  required_version       = ">= 0.13.0"
  required_providers {
    aws                  = {
      source             = "hashicorp/aws"
      version            = "2.69.0"
    }
  }
}











 