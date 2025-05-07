# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "hq-router" {
  name    = "hq-router"
  region  = "us-central1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "lima-router" {
  name    = "lima-router"
  region  = "southamerica-west1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "phnom-penh-router" {
  name    = "phnom-penh-router"
  region  = "asia-southeast1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "zagreb-router" {
  name    = "zagreb-router"
  region  = "europe-central2"
  network = google_compute_network.main.id
}
