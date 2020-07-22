# Complete your provider information here
# Full list of providers: https://www.terraform.io/docs/providers/index.html
provider "aws" {
    # provider parameters here. Override any secrets at run time and avoid storing them in source control
    access_key = ""
    secret_key = ""
    region = ""
}

# Make a single call to the component module in the modules folder of this repo.
# Do not create any resources nor reference other modules here.
# That belongs in ../../../modules/ corporate/ corporate.tf
module " corporate" {
    source = "../../../modules/ corporate"
    # other variables to be passed in go here
    environment_name = "${var.environment_name}"
    component_name = "${var.component_name}"
}




# The "access_token" parameter is left here for completeness, but should be set as the CONSUL_HTTP_TOKEN environment variable
terraform {
    backend "consul" {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ corporate"
        access_token = ""
    }
}

data "terraform_remote_state" "besu" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/besu"
        access_token = ""
    }
}

data "terraform_remote_state" " amqp" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ amqp"
        access_token = ""
    }
}

data "terraform_remote_state" " kafka" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ kafka"
        access_token = ""
    }
}

data "terraform_remote_state" " persistance" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ persistance"
        access_token = ""
    }
}

data "terraform_remote_state" " container" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ container"
        access_token = ""
    }
}

data "terraform_remote_state" " pod" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ pod"
        access_token = ""
    }
}

data "terraform_remote_state" " cluster" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ cluster"
        access_token = ""
    }
}

data "terraform_remote_state" " pipe" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ pipe"
        access_token = ""
    }
}

data "terraform_remote_state" " failover" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ failover"
        access_token = ""
    }
}

data "terraform_remote_state" " system" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ production/ system"
        access_token = ""
    }
}


