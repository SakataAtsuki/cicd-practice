terraform {
  backend "gcs" {
    bucket = "cicd-practice-terraform-state"
    prefix = "terraform/state"
  }
}
