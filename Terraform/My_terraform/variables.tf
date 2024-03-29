variable "credentials" {
   description = "GCP Service Account Key Credentials"
}


#variable "name" {
 # description = "prefix in resources name"
  #type        = string
#}


variable "project_id" {
  description = "Project Id of the GCP account"
  type        = string
}
variable "region" {
  description = "Region in which the resources will create"
  type        = string
}

variable "zone" {
  description = "Zone in which the resources will create"
  type        = string
}

#variable "subnet_cidr_range" {
 # description = "Subnet CIDR IP range"
#}
