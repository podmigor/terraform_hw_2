output "gateway_ip" {
  value = google_compute_subnetwork.default.gateway_address
}

output "subnet_self_link" {
  value = google_compute_subnetwork.default.self_link
}

output "subnet_id" {
  value = google_compute_subnetwork.default.id
}
