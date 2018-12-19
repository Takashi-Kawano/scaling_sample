
resource "google_compute_instance_template" "instance_template" {
  name_prefix  = "${var.project_name}-${lookup(var.machine_dev, "name")}-"
  machine_type = "${lookup(var.machine_dev, "machine_type", "f1-micro")}"
  region       = "${var.region}"

  disk {
    source_image = "${coalesce(var.dev_image, data.terraform_remote_state.output.dev_image)}"
    disk_type    = "${lookup(var.machine_dev, "disk_type", "pd-standard")}"
    disk_size_gb = "${lookup(var.machine_dev, "disk_size", "30")}"
    device_name  = "${lookup(var.machine_dev, "device_name", "persistent-disk-0")}"
  }

  network_interface {
    network = "${var.network}"
    access_config {}
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "google_compute_instance_group_manager" "instance_group_manager" {
  name = "instance-group-manager"
  instance_template = "${google_compute_instance_template.instance_template.self_link}"
  base_instance_name = "dev-instance"
  zone = "${var.zone}"
  target_size = "${var.dev_target_size}"
  update_strategy = "ROLLING_UPDATE"
  rolling_update_policy {
    minimal_action = "REPLACE"
    type = "PROACTIVE"
    max_unavailable_fixed = 0
  }
}

