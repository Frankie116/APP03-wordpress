variable "my-region-name" {
  description           = "The AWS region things are created in"
  default               = "London"
}


# main.tf -------------------------------------------------------------
variable "my-aws-region" {
  description           = "The AWS region things are created in"
  default               = "eu-west-2"
}


# 1a-vpc.tf -------------------------------------------------------------
variable my-vpc-cidr-block {
  description           = "CIDR block for VPC"
  type                  = string
  default               = "10.0.0.0/16"
}

variable my-priv-subnets-per-vpc {
  description           = "Number of private subnets. Maximum of 16."
  type                  = number
  default               = 2
}

variable my-priv-subnet-cidr-blocks {
  description           = "Available cidr blocks for private subnets"
  type                  = list(string)
  default               = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24",
    "10.0.8.0/24",
    "10.0.9.0/24",
    "10.0.10.0/24",
    "10.0.11.0/24",
    "10.0.12.0/24",
    "10.0.13.0/24",
    "10.0.14.0/24",
    "10.0.15.0/24",
    "10.0.16.0/24"
  ]
}


variable my-pub-subnets-per-vpc {
  description           = "Number of public subnets. Maximum of 16."
  type                  = number
  default               = 2
}

variable my-pub-subnet-cidr-blocks {
  description           = "Available cidr blocks for public subnets"
  type                  = list(string)
  default               = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
    "10.0.104.0/24",
    "10.0.105.0/24",
    "10.0.106.0/24",
    "10.0.107.0/24",
    "10.0.108.0/24",
    "10.0.109.0/24",
    "10.0.110.0/24",
    "10.0.111.0/24",
    "10.0.112.0/24",
    "10.0.113.0/24",
    "10.0.114.0/24",
    "10.0.115.0/24",
    "10.0.116.0/24"
  ]
}

# 2a-ec2-choose-ami.tf -------------------------------------------------------------
variable my-instances-per-subnet {
  description = "Number of EC2 instances in each private subnet"
  type = number
  default = 1
}

variable my-instance-type {
  description = "Type of EC2 instance to use."
  type        = string
  default     = "t2.micro"
}

variable my-servername {
    default = "jenkins"
}


# 2d-nic-and-eip.tf -------------------------------------------------------------
variable "my-existing-eip" {
    default = "my-default-eip"
}

# various ----------------------------------------------------------------
variable my-project-name {
  description           = "Name of the project. Used in resource names and tags."
  type                  = string
  default               = "lab000"
}

variable my-environment {
  description           = "Value of the 'Environment' tag."
  type                  = string
  default               = "dev"
}



variable instance_type {
  description = "Type of EC2 instance to use."
  type        = string
  default     = "t2.micro"
}


variable "my-scriptfile" {
    default = "my-script.sh"
}


# 05c-lb-tg ----------------------------------------------------------------
variable "my-hc-path" {
  default               = "/"
}

variable "my-hc-interval" {
  default               = "30"
}

# 04c-sg-rules -------------------------------------------------------------
variable "my-port-app1" {
  description           = "Port exposed by the docker image to redirect traffic to"
  default               = 8080
}


# 06a-route53.tf -----------------------------------------------------------
variable "my-existing-r53-zone" {
    default             = "redacted.com"    # this variable should point to an exiting r53 hosted zone
}

variable "my-lb-hosted-zone" {
    default             = "ZHREDACTEDK8"
} 

# variable "my-application" {
#     default             = "my-app"
# } 


# 09a-sg-rules -------------------------------------------------------------
variable "use-snapshot" {
  description = "'true' to use 'my-snapshot-latest' ami (should already exist) or 'false' to use a standard amazon linux ami."
  type        = bool
  default     = true
}

variable "my-snapshot-name" {
  type        = string
  default     = "snapshot-default"

}
