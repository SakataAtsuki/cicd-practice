resource "google_service_account" "sakata-test" {
  project      = local.project_id
  account_id   = "${terraform.workspace}-${local.name}"
  display_name = "${terraform.workspace}-${local.name}"
  description  = "${terraform.workspace}-${local.name} 用のサービスアカウント"
}
