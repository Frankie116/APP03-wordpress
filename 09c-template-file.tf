# ---------------------------------------------------------------------------------------------------
# version  1.6
# Library: https://github.com/Frankie116/my-library.git
# Uses an existing script to configure the container definition. 
# ---------------------------------------------------------------------------------------------------

# req:
# 10a-cw-logs.tf - local.my-cw-log-group
# variables.tf   - var.my-application
# variables.tf   - var.my-docker-image
# variables.tf   - var.my-docker-port
# variables.tf   - var.my-desired-fargate-cpu
# variables.tf   - var.my-desired-fargate-memory
# variables.tf   - var.my-aws-region



# A script named in the template variable needs to exist.
# Any variables named under vars (left) need to exist within the script file
# Any variables named under vars (right) need to exist in variables.tf


data "template_file" "my-template-file" {
  template                   = file("./templates/my-script.sh")
  vars                       = {
    my-scriptfile        = "my-script.sh"
  }
}