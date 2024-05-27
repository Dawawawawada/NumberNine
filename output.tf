#output "capture" {
 # value = "https://storage.googleapis.com/${google_storage_bucket.maymadnessmantis-1a.name}/index.html"
#}
output "public_ip" {
  value = google_compute_instance.task2-vm-tf.network_interface.0.access_config.0.nat_ip
}

output "vpc_name" {
  value = google_compute_network.task2network-tf.id
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet-task2-tf.name
}

output "internal_ip" {
  value = google_compute_instance.task2-vm-tf.network_interface.0.network_ip
}