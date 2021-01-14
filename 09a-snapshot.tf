# ---------------------------------------------------------------------------------------------------
# version  1.4
# Library: https://github.com/Frankie116/my-library.git
# Uses an existing snapshot named "my-snapshot-latest"
# ---------------------------------------------------------------------------------------------------

# req:
# An existing snapshot named "my-snapshot-latest" needs to be found in local region.


data "aws_ebs_snapshot" "my-existing-snapshot" {
  most_recent           = true
  owners                = ["self"]
  filter {
    name                = "tag:Name"
    values              = [var.my-snapshot-name]
  }
}