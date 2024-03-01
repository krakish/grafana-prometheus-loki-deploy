terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
  spaces_access_id  = var.access_id
  spaces_secret_key = var.secret_key
}

data "digitalocean_ssh_key" "wind-key" {
  name = "wind-key"
}

resource "digitalocean_spaces_bucket" "log-bucket" {
  name   = "log-bucket-d021650d"
  region = "fra1"
}
