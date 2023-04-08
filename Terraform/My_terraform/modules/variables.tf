variable "credentials" {
  description = "GCP Service Account json Key"
}
variable "name" {
  description = "prefix in resources name"
  type        = string
}

variable "project_id" {
  description = "Project Id of the GCP account"
  default =  	"my-test-terraform-383009"
  type        = string
}

variable "region" {
  description = "Region in which the resources will create"
  default = "us-central1"
  type        = string
}

variable "zone" {
  description = "Zone in which the resources will create"
  type        = string
}

variable "subnet_cidr_range" {
  description = "Subnet CIDR IP range"
}




variable "db_version" {
  type        = string
  default     = "MYSQL_5_7" 
 description = "specifies the database version"
}


variable "db_pwd" {
  type        = string
  default     = "admin123"
  description = "database password"
}

variable "db_user" {
  type        = string
  default     = "kanchan"
  description = "input the database authorized user "
}

variable "db_host" {
  type        = string
  default     = "%"
  description = "description"
  
}

variable "db_name" {
  type        = string
  default     = "testdb"
  description = "description"
}

variable "dbinst_name" {
  type        = string
  default     ="testsql_db"
  description = "name of database instance"
}

variable "auth_networks" {
  type        = string
  default     = "0.0.0.0/0"
  description = "authorized networks ip incoming to the database"
}