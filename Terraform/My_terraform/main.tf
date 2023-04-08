module "gcp" {
  source            = "./modules"
  credentials       = "var.credentials"
  name             = "var.name"
  project_id       = "var.project_id"
  region            = "var.region"
  zone              = "var.zone"
  subnet_cidr_range = "var.subnet_cidr_range"
}
