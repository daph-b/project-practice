output "cluster_name" {
    value = google_container_cluster.sca-cluster.name
}

output "cluster_zone" {
    value = google_container_cluster.sca-cluster.location
}