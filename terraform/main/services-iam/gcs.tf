resource "google_storage_bucket_iam_member" "sakata-test-storage-viewer" {
  member = "serviceAccount:${google_service_account.sakata-test.email}"
  role   = "roles/storage.objectViewer"
  bucket = "${terraform.workspace}-${local.name}"
}
