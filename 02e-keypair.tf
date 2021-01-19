

resource "aws_key_pair" "my-tmp-keypair" {
  key_name   = var.my-private-key
  public_key = var.my-public-key
  tags = {
    Name                 = var.my-private-key
    Project              = var.my-project-name
    Environment          = var.my-environment
    Terraform            = "true"
  }

}