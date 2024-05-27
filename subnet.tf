resource "google_compute_subnetwork" "subnet-task2-tf" {
  name          = "subnet-task2-gcp"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.task2network-tf.id
}

resource "google_compute_firewall" "task2-firewall-tf" {
  name    = "task2-firewall-gcp"
  network = google_compute_network.task2network-tf.id

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
}
