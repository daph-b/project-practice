output "db_instance" {
    value = google_sql_database_instance.primary.name
}

output "db_user" {
    value = google_sql_user.admin_user.name
}

output "db_pass" {
    value = google_sql_user.admin_user.password
    sensitive = true
}

output "db" {
    value = google_sql_database.database.name
}