# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

# For Iowa
resource "google_compute_subnetwork" "hq-internal" {
  name                     = "hq-internal"
  ip_cidr_range            = "10.92.28.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "hq-app1" {
  name                     = "hq-app1"
  ip_cidr_range            = "10.92.128.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true
}

# For Lima
resource "google_compute_subnetwork" "lima-subnet-01" {
  name                     = "lima-subnet-01"
  ip_cidr_range            = "10.92.51.0/24"
  region                   = "southamerica-west1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "lima-app1" {
  name                     = "lima-app1"
  ip_cidr_range            = "10.92.151.0/24"
  region                   = "southamerica-west1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true
}

# For Phnom-Penh
resource "google_compute_subnetwork" "phnom-penh-subnet-01" {
  name                     = "phnom-penh-subnet-01"
  ip_cidr_range            = "10.92.85.0/24"
  region                   = "asia-southeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "phnom-penh-app1" {
  name                     = "phnom-penh-app1"
  ip_cidr_range            = "10.92.185.0/24"
  region                   = "asia-southeast1"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true
}

# For Zagreb
resource "google_compute_subnetwork" "zagreb-subnet-01" {
  name                     = "zagreb-subnet-01"
  ip_cidr_range            = "10.92.38.0/24"
  region                   = "europe-central2"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "zagreb-app1" {
  name                     = "zagreb-app1"
  ip_cidr_range            = "10.92.138.0/24"
  region                   = "europe-central2"
  network                  = google_compute_network.prod1.id
  private_ip_google_access = true
}