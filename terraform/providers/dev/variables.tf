
variable "credentials" {
    default = "../../../credentials/scaling-sample-427451a6e5ec.json"
}

variable "project_id" {
  default = ""
}

variable "region" {
  default = ""
}

variable "project_name" {
  default = ""
}

variable "dev_image" {
    default = ""
}

variable "machine_dev" {
    type = "map"
}

variable "dev_target_size" {
    default = ""
}

variable "instance_group_zones" {
    type = "list"
}

variable "allow_stopping_for_update" {
    default = "false"
}


variable "target_size" {
  default = ""
}

variable "zone" {
  default = ""
}

variable "network" {
  default = ""
}

