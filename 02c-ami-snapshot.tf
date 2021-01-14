# ---------------------------------------------------------------------------------------------------
# version  1.4
# Library: https://github.com/Frankie116/my-library.git
# Creates a new ami from an existing bootable snapshot
# ---------------------------------------------------------------------------------------------------

# req:
# 9a-snapshot.tf      - data.aws_ebs_snapshot.my-existing-snapshot.id
# 9b-random-string.tf - random_string.my-random-string.result
# variables.tf        - var.my-project-name
# variables.tf        - var.my-environment


resource "aws_ami" "my-ami-snapshot" {
  # count                = var.use-snapshot ? 1 : 0
  name                   = "my-snapshot-ami-${random_string.my-random-string.result}"
  virtualization_type    = "hvm"
  root_device_name       = "/dev/sda1"
  ebs_block_device {
    snapshot_id          = data.aws_ebs_snapshot.my-existing-snapshot.id
    device_name          = "/dev/sda1"
  }
    tags                 = {
    Name                 = "my-snapshot-ami-${random_string.my-random-string.result}"
    Terraform            = "true"
    Project              = var.my-project-name
    Environment          = var.my-environment
  }
}