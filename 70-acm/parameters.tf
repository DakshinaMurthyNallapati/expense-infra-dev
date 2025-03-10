resource "aws_ssm_parameter" "web_alb_certificate_arn" {
    name = "/${var.project_name}/${var.environment}/web_alb_certificate_arn"
    type = "String"
    description = "web_alb_certificate_arn for ${var.project_name}-${var.environment}"
    value = aws_acm_certificate.expense.arn
}
