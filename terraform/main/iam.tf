resource "google_project_iam_member" "sakata-test" {
  project = local.project_id
  member  = "serviceAccount:${google_service_account.sakata-test.email}"
  for_each = toset([
    "roles/artifactregistry.admin",
  ])
  role = each.value
}
