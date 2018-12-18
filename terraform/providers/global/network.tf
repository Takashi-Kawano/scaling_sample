
resource "google_compute_network" "network" {
    name                    = "${var.project_name}-network"
    auto_create_subnetworks = "true"
}

