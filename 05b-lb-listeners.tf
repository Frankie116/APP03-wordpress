# ---------------------------------------------------------------------------------------------------
# version  1.4
# Library: https://github.com/Frankie116/my-library.git
# Creates load balance listeners
# ---------------------------------------------------------------------------------------------------

# req:
# 05a-lb-alb.tf - aws_lb.my-alb.arn
# 05c-lb-tg.tf  - aws_lb_target_group.my-alb-target-group.arn
# variables.tf  - var.my-port-app1


resource "aws_lb_listener" "my-lb-listener-http" {
  load_balancer_arn       = aws_lb.my-alb.arn
  port                    = var.my-port-app1
  protocol                = "HTTP"
  default_action {
    type                  = "forward"
    target_group_arn      = aws_lb_target_group.my-lb-tg.arn
  }
}
