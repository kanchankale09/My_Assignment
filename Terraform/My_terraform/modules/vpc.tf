resource "google_compute_network" "vpc-network" {
  name                    = "vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "testvpc-subnet1" {
  name                     = "subnet1"
  ip_cidr_range            = "10.2.0.0/16"
  region                   = "us-central1"
  network                  = google_compute_network.vpc-network.id
  private_ip_google_access = true
  depends_on               = [google_compute_network.vpc-network]
}

resource "google_compute_subnetwork" "testvpc-subnet2" {
  name                     = "subnet2"
  ip_cidr_range            = "192.0.0.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.vpc-network.id
  private_ip_google_access = true
  depends_on               = [google_compute_network.vpc-network]
}