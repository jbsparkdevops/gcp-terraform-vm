provider "google" {
  credentials = jsondecode(var.credentials_json)
  project     = var.project
  region      = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-vm2"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }
}
