project_id      = "meta-iterator-225901"
region          = "us-west1"
project_name    = "scaling-sample"
dev_target_size = "1"
zone            = "us-west1-a"
network         = "default"

machine_dev     = {
    "name"              = "dev"
    "machine_type"      = "f1-micro"
    "env_name"          = "dev"
    "group_name"        = "dev"

    "disk_type"         = "pd-standard"
    "disk_size"         = "30"

    "update_strategy"   = "NONE"
}

"instance_group_zones"  = [
    "us-west1-a",
]

