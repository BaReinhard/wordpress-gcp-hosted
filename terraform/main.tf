provider "google" {
  project = "uplifted-elixir-203119"
  region  = "us-west1"
}

resource "google_compute_instance" "default" {
  project      = "uplifted-elixir-203119"
  zone         = "us-west1-a"
  name         = "wordpress-compute"
  machine_type = "f1-micro"
  tags         = ["http-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-1604-xenial-v20181004"
    }
  }

  network_interface {
    network = "default"

    access_config = {
      nat_ip = "NEEDS_TO_BE_SET"
    }
  }

  provisioner "local-exec" {
    command = "sleep 20;ansible-playbook -i ${google_compute_instance.default.network_interface.0.access_config.0.nat_ip}, ../ansible/playbook.yml -u root"
  }
}
