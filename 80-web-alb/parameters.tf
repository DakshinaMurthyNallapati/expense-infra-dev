resource "aws_ssm_parameter" "web_alb_listener_arn" {
    name = "/${var.project_name}/${var.environment}/web_alb_listener_arn"
    type = "String"
    description = "web_alb_listener_arn for ${var.project_name}-${var.environment}"
    value = aws_lb_listener.https.arn
}
