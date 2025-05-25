# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#nested_access_config

resource "google_compute_instance" "main-instance" {
  name         = "main-instance"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.hq-internal.name
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup.sh")
}

resource "google_compute_instance" "hoop-tracker" {
  name         = "hoop-tracker"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.hq-internal.name
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup2.sh")
}

resource "google_compute_instance" "lima-southwest" {
  name         = "lima-southwest"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.hq-internal.name
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup3.sh")
}