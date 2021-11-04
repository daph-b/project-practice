resource "google_storage_bucket_object" "database" {
  name   = "sca-database"
  content = "${root_module.outputs}"
  bucket = "sca-project"
}
