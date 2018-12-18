
output "dev_image" {
    value = "${coalesce(var.dev_image, data.terraform_remote_state.output.dev_image)}"
}

output "dev_target_size" {
    value = "${coalesce(var.dev_target_size, data.terraform_remote_state.output.dev_target_size)}"
}

