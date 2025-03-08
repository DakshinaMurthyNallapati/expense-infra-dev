resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name}/${var.environment}/vpc_id"
    type = "String"
    description = "VPC-id for ${var.project_name}-${var.environment}"
    value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/public_subnet_ids"
    type = "StringList"
    description = "Public-Subnet-Ids for ${var.project_name}-${var.environment}"
    value = join(",",module.vpc.public_subnet_ids)
}

resource "aws_ssm_parameter" "privte_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/private_subnet_ids"
    type = "StringList"
    description = "Private-Subnet-Ids for ${var.project_name}-${var.environment}"
    value = join(",",module.vpc.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/database_subnet_ids"
    type = "StringList"
    description = "Database-Subnet-Ids for ${var.project_name}-${var.environment}"
    value = join(",",module.vpc.database_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_group_name" {
    name = "/${var.project_name}/${var.environment}/database_subnet_group_name"
    type = "String"
    description = "Database-subnet-group-name for ${var.project_name}-${var.environment}"
    value = aws_db_subnet_group.expense.name
}

