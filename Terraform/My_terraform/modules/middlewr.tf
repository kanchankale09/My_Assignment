
resource "google_compute_instance" "vm2" {
  #count        = 2
  name         = "middlewr"
  #name         = "demo-instance-${count.index+1}"
  machine_type = "n1-standard-2"
  

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" 
    }
  }
  
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network    = google_compute_network.vpc-network.name
    subnetwork = google_compute_subnetwork.testvpc-subnet2.name
    
    access_config {
      // Ephemeral public IP
    }
  }

  depends_on = [google_compute_network.vpc-network, google_compute_subnetwork.testvpc-subnet1]
}