resource "aws_ssm_parameter" "mysql_sg_id" {
    name = "/${var.project_name}/${var.environment}/mysql_sg_id"
    type = "String"
    description = "MySQL-SG-id for ${var.project_name}-${var.environment}"
    value = module.mysql_sg.sg_id
}

resource "aws_ssm_parameter" "backend_sg_id" {
    name = "/${var.project_name}/${var.environment}/backend_sg_id"
    type = "String"
    description = "Backend-SG-id for ${var.project_name}-${var.environment}"
    value = module.backend_sg.sg_id
}

resource "aws_ssm_parameter" "frontend_sg_id" {
    name = "/${var.project_name}/${var.environment}/frontend_sg_id"
    type = "String"
    description = "Fronted-SG-id for ${var.project_name}-${var.environment}"
    value = module.frontend_sg.sg_id
}

resource "aws_ssm_parameter" "bastion_sg_id" {
    name = "/${var.project_name}/${var.environment}/bastion_sg_id"
    type = "String"
    description = "Bastion-Sg-id for ${var.project_name}-${var.environment}"
    value = module.frontend_sg.sg_id
}