provider "google" {
    project = "oredata-project"
    region = "us-central1"
}

terraform {
  backend "gcs"{
    bucket = "oredata-case-test"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.0"


    }
  }
}