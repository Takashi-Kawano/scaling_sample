
resource "google_compute_project_metadata" "metadata" {
    metadata {
        sshKeys = "ansible:${file(var.ansible_public_key)}"
    }
}

resource "google_compute_network" "network" {
    name                    = "${var.project_name}-network"
    auto_create_subnetworks = "true"
}

