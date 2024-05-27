terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token             = var.do_token
  spaces_access_id  = var.access_id
  spaces_secret_key = var.secret_key
}

data "digitalocean_ssh_key" "wind-key" {
  name = "wind-key"
}

# resource "digitalocean_spaces_bucket" "log-bucket" {
#   name          = "log-bucket-d021650dfff"
#   region        = "fra1"
#   force_destroy = true
# }

# resource "digitalocean_spaces_bucket" "bucket-2" {
#   name          = "bucket-2-z02f655fff"
#   region        = "fra1"
#   force_destroy = true
# }

# resource "digitalocean_spaces_bucket_policy" "access-key-test" {
#   region = "fra1"
#   bucket = digitalocean_spaces_bucket.bucket-2.name
#   policy = jsonencode({
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Sid" : "AllowAccessBasedOnAccessKey",
#         "Effect" : "Deny",
#         "Principal" : "*",
#         "Action" :  "*",
#         "Resource" : [
#           "arn:aws:s3:::${digitalocean_spaces_bucket.bucket-2.name}/*"
#         ],
#         # "Condition": {
#         #         "StringEquals": {
#         #             "aws:accessKey": "AKIADO00QJPGLETZ3Y3BNAQV"
#         #         }
#         # } 
#       }
#     ]
#   })
# }
