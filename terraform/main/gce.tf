resource "google_compute_instance" "default" {
  name         = "sakata-test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  project      = local.project_id

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    user-data = file("./startup/cloud-init.yaml"),
  }
}
