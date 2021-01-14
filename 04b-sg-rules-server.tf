# ---------------------------------------------------------------------------------------------------
# version  1.4
# Library: https://github.com/Frankie116/my-library.git
# Creates security group rules
# ---------------------------------------------------------------------------------------------------

#req:
# 4b-sg.tf            - aws_security_group.my-lb-sg.id
# 4b-sg.tf            - aws_security_group.my-ecs-sg.id
# variables.tf        - var.my-docker-port



resource "aws_security_group_rule" "my-server-ingress" {
  description              = "allow only app1 port inbound from alb only"
  security_group_id        = aws_security_group.my-sg-server1.id
  type                     = "ingress"
  protocol                 = "tcp"
  from_port                = var.my-port-app1
  to_port                  = var.my-port-app1
  source_security_group_id = aws_security_group.my-lb-sg.id
  depends_on = [aws_security_group.my-lb-sg,aws_security_group.my-sg-server1]
}

resource "aws_security_group_rule" "my-server-egress" {
  description              = "allow any port to exit server to anywhere"
  security_group_id        = aws_security_group.my-sg-server1.id
  type                     = "egress"
  protocol                 = "-1"
  from_port                = 0
  to_port                  = 0
  cidr_blocks              = ["0.0.0.0/0"]
  depends_on = [aws_security_group.my-lb-sg,aws_security_group.my-sg-server1]
}