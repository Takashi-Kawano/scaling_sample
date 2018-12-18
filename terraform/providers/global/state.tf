
data "terraform_remote_state" "output" {
    backend = "local"

    config {
      prefix = "./terraform.tfstate"
    }
}

