terraform {
  required_version = ">= 1.0.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  credentials = file("tf_gcs_bucket.json")
  project     = "tf_gcs_buckets"
  region      = "us-central1"
}

#resource "google_compute_instance" "example" {
#  name         = "example-instance"
#  machine_type = "e2-medium"
#  zone         = "us-central1-a"

#  tags = ["example"]

#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-11"
#    }
#  }

#  network_interface {
#    network = "default"
#    access_config {
#    }
#  }
#}

