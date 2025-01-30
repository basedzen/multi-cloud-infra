output "vpc_name" {
  description = "The name of the GCP VPC"
  value       = google_compute_network.main.name
}

output "subnet_name" {
  description = "The name of the GCP Subnet"
  value       = google_compute_subnetwork.main.name
}
# GCP Outputs
