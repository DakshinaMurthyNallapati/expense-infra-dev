resource "aws_ssm_parameter" "app_alb_listener_arn" {
    name = "/${var.project_name}/${var.environment}/app_alb_listener_arn"
    type = "String"
    description = "app_alb_listener_arn for ${var.project_name}-${var.environment}"
    value = aws_lb_listener.http.arn
}
