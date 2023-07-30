resource "google_storage_bucket" "sakata-test" {
  project       = local.project_id
  name          = "${terraform.workspace}-${local.name}"
  location      = "US"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_member" "sakata-test-storage-viewer" {
  member = "serviceAccount:${google_service_account.sakata-test.email}"
  role   = "roles/storage.objectViewer"
  bucket = "${terraform.workspace}-${local.name}"
}
