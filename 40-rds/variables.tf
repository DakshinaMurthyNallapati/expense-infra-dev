
variable "project_name" {
  
    default = "expense"
}

variable "environment" {
    default = "dev"
  
}
variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        Terraform = "true"
    }
  
}

variable "zone_id" {
    default = "Z02764323F8JOQMF4PP9J"
  
}

variable "domain_name" {
    default = "dakshina.cloud"
  
}