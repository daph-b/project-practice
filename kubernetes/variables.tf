variable "project_id" {
  type        = string
}

variable "region" {
  type = string
}

variable "cluster_name" {
  type = string  
}

variable "cluster_zone" {
  type = string
}

variable "db_instance" {
  type = string
}

variable "namespace" {
  type        = string
  description = "namespace where the kubernetes objects will be created"
}

variable "db_user" {
  type        = string
  description = "user of the database instance for the kubernetes application passed from the db module"
} 


variable "db_pass" {
  type        = string
  description = "database user password passed form the db module"
} 

variable "db" {
  type        = string
  description = "name of database to connect to"
}

variable "db_host" {
  type        = string
  default     = "127.0.0.1"
  description = "database host"
}


variable "api_key" {
  type        = string
  description = "credentials for accessing the iex api"
}

variable "deployment_replica" {
  type        = number
  description = "number of pods in the deployment"
}

variable "container_image" {
  type        = string
  description = "container image to run in the pod"
}

variable "roles" {
  type = list(string)
  default = ["roles/cloudsql.client"]
  description = "for authenticating the cloud sql proxy side car container"
}
