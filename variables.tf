variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "sa-east-1"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "wordpressdb"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "db_instance_type" {
  description = "Database instance type"
  type        = string
  default     = "db.t2.micro"
}
