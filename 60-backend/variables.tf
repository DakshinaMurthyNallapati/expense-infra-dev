
variable "project_name" {
  
    default = "expense"
}

variable "environment" {
    default = "dev"
  
}

variable "domain_name" {
    default = "dakshina.cloud"
}
variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        Terraform = "true"
    }
  
}

