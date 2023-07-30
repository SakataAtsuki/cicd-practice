terraform {
  required_version = "1.5.4"

  backend "gcs" {
    bucket = "cicd-practice-terraform-state"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.75.1"
    }
  }
}
