resource google_compute_instance "task2-vm-tf" {
  name         = "task2-vm-gcp"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  #allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-9-stretch-v20210916"
      size = 10
    }
  }

network_interface {
    network = google_compute_network.task2network-tf.id
    subnetwork = google_compute_subnetwork.subnet-task2-tf.id
     access_config {
      // Ephemeral public IP
    } 
  }
metadata_startup_script = file("startup.sh")
}
