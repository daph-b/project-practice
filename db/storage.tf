resource "google_storage_bucket_object" "db_instance" {
  name   = "db_instance"
  content = "${google_sql_database_instance.primary.name}"
  bucket = "sca-project"
}

resource "google_storage_bucket_object" "db_user" {
  name   = "db_user"
  content = "${google_sql_user.admin_user.name}"
  bucket = "sca-project"
}

resource "google_storage_bucket_object" "db_pass" {
  name   = "db_pass"
  content = "${google_sql_user.admin_user.password}"
  bucket = "sca-project"
}

resource "google_storage_bucket_object" "db" {
  name   = "db"
  content = "${google_sql_database.database.name}"
  bucket = "sca-project"
}