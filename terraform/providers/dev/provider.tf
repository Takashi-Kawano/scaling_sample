
provider "google" {
    version     = "~> 1.17.0"
    credentials = "${file(var.credentials)}"
    project     = "${var.project_id}"
    region      = "${var.region}"
}

