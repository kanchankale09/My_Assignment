
resource "google_compute_instance" "vm3" {
  #count        = 2
  name         = "extra-ha"
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

  tags = ["allow-http"]

  

  network_interface {
    network    = google_compute_network.vpc-network.name
    subnetwork = google_compute_subnetwork.testvpc-subnet1.name
    
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("startup.sh")

  depends_on = [google_compute_network.vpc-network, google_compute_subnetwork.testvpc-subnet2]
}