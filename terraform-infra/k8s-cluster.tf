# resource "digitalocean_kubernetes_cluster" "my-k8s-cluster" {
#   name   = "cluster-1"
#   region = "fra1"
#   # Grab the latest version slug from `doctl kubernetes options versions`
#   version = "1.29.1-do.0"
#   vpc_uuid   = resource.digitalocean_vpc.test-vpc.id

#   node_pool {
#     name       = "pool-of-single-node"
#     size       = "s-1vcpu-2gb"
#     node_count = 1

#     # taint {
#     #   key    = "workloadKind"
#     #   value  = "database"
#     #   effect = "NoSchedule"
#     # }
#   }
# }
