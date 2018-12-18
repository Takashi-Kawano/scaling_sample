
data "terraform_remote_state" "output" {
    backend = "local"

    config {
      prefix = "./terraform.tfstate"
    }

    defaults = {
       "dev_image" = "centos-7"
       "dev_target_size" = 1
    }
}

