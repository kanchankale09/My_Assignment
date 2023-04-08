resource "google_compute_router" "router" {
  name    = "test-router"
  region  = google_compute_subnetwork.testvpc-subnet1.region
  network = google_compute_network.vpc-network.id

  bgp {
    asn = 64514
  }
  depends_on = [google_compute_network.vpc-network, google_compute_subnetwork.testvpc-subnet1]
}

resource "google_compute_router_nat" "nat-gateway" {
  name                               = "nat-gateway"
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }

  depends_on = [google_compute_router.router]
}