resource "google_compute_subnetwork" "subnet" {

    name = var.subnet_name
    region = var.region
    network = var.vpc_id
    ip_cidr_range = var.subnet_cidr





    
    



  
}