variable "project_id" {
  description = "The project ID to host the cluster in"
  default     = "sandy-k8s-cluster"
}
variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "sandy-cluster-1"
}
variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "prod"
}
variable "region" {
  description = "The region to host the cluster in"
  default     = "us-central1"
}
variable "kubernetes_version" {
  description = "The Kubernetes version of the masters"
  default     = "1.30.5-gke.1355000"
}
variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
}
variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet"
}
variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}
variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}

variable "node_pools_oauth_scopes" {
  type        = map(list(string))
  description = "Map of lists containing node oauth scopes by node-pool name"
  default = {
    all               = ["https://www.googleapis.com/auth/cloud-platform"]
    default-node-pool = ["https://www.googleapis.com/auth/cloud-platform"] # Changed from []
  }
}

variable "grant_registry_access" {
  type        = bool
  description = "Grants created cluster-specific service account storage.objectViewer and artifactregistry.reader roles."
  default     = true
}

