terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.60.2"
    }
  }
}

provider "google" {
  credentials = file("${var.credentials}")

  project = var.project_id
  region  = var.region
  zone    = var.zone
}