----------------------------------------------------------------------------
#  Project: APP03-wordpress

Purpose: To create a terraform run that will build a wordpress website on a single

EC2 instance.  The EC2 will use a golden ami with wordpress pre-installed.

Author:  Frank Effrim-Botchey

----------------------------------------------------------------------------


## modules:
vpc

app_security_group

elb_http

lb_security_group

## data:
aws_ebs_snapshot 

aws_availability_zones

template_file


## resources:

aws_ami

aws_instance

random_string

script:

my-script.sh
