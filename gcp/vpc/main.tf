

# VPC NETWORK
resource "google_compute_network" "main_vpc" {
    name = var.vpc_name
    auto_create_subnetworks = var.create_subnt 
    routing_mode = var.routing_mode
}


#VPC SUBNET

resource "google_compute_subnetwork" "subnet" {
    network = google_compute_network.main_vpc.id
    name = var.subnet_name
    ip_cidr_range = var.subnet_cidr_range
    region = var.region 
}