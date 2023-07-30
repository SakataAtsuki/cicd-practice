resource "google_artifact_registry_repository" "default" {
  project       = local.project_id
  location      = local.region
  repository_id = "${terraform.workspace}-${local.name}"
  description   = "${terraform.workspace}-${local.name}"
  format        = "DOCKER"
}
