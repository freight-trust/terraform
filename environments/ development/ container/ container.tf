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
# That belongs in ../../../modules/ container/ container.tf
module " container" {
    source = "../../../modules/ container"
    # other variables to be passed in go here
    environment_name = "${var.environment_name}"
    component_name = "${var.component_name}"
}




# The "access_token" parameter is left here for completeness, but should be set as the CONSUL_HTTP_TOKEN environment variable
terraform {
    backend "consul" {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ container"
        access_token = ""
    }
}

data "terraform_remote_state" "besu" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/besu"
        access_token = ""
    }
}

data "terraform_remote_state" " amqp" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ amqp"
        access_token = ""
    }
}

data "terraform_remote_state" " kafka" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ kafka"
        access_token = ""
    }
}

data "terraform_remote_state" " persistance" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ persistance"
        access_token = ""
    }
}

data "terraform_remote_state" " pod" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ pod"
        access_token = ""
    }
}

data "terraform_remote_state" " cluster" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ cluster"
        access_token = ""
    }
}

data "terraform_remote_state" " corporate" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ corporate"
        access_token = ""
    }
}

data "terraform_remote_state" " pipe" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ pipe"
        access_token = ""
    }
}

data "terraform_remote_state" " failover" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ failover"
        access_token = ""
    }
}

data "terraform_remote_state" " system" {
    backend = "consul"
    config {
        address      = "localhost:8500"
        path         = "terraform-remote-state/ development/ system"
        access_token = ""
    }
}


