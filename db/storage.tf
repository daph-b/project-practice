resource "google_storage_bucket_object" "database" {
  name   = "sca-database"
  source = "${file(path.module/"outputs.tf")}"
  bucket = "sca-project"
}
