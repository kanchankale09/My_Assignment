resource "google_compute_firewall" "firewall-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc-network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  depends_on    = [google_compute_network.vpc-network]
}


resource "google_compute_firewall" "firewall-http" {
  name    = "allow-httprule"
  network = google_compute_network.vpc-network.name
  source_ranges = ["0.0.0.0/0"]
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }
  target_tags = ["allow-http"]
  priority    = 1000

}

/*resource "google_compute_firewall" "firewall-icmp" {
  name    = "allow-icmprule"
  network = google_compute_network.vpc-network.name

  allow {
    protocol = "icmp"
  }
  depends_on = [google_compute_network.vpc-network]
}*/