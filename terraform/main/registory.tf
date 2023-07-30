resource "google_artifact_registry_repository" "default" {
  project       = local.project_id
  location      = local.region
  repository_id = local.name
  description   = local.name
  format        = "DOCKER"
}
