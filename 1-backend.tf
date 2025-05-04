# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "wave-terraform-state-01"
    prefix = "terraform/state"
    credentials = "gcp-01-453500-0c288e425c90.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}


# resource "google_compute_disk" "grafana_disk" {
#   name  = "grafana-disk"
#   type  = "pd-standard"
#   zone  = "us-central1-a"
#   size  = "10"
# }