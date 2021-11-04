// this file contains the data sources used in this project

// get gcloud authentication information
data "google_client_config" "default" {}


// get information about cluster
data "google_container_cluster" "sca_cluster" {
  name = data.terraform_remote_state.sca-cluster.outputs.cluster_name
  location = data.terraform_remote_state.sca-cluster.outputs.cluster_zone
}


//get data about the cloud sql instance we want to connect to
data "google_sql_database_instance" "app_db" {
    name = data.terraform_remote_state.sca-database.outputs.db_instance
} 

