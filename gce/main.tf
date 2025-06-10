resource "google_compute_instance" "vm" {

    name = var.vm_name
    machine_type = var.machine_type
    zone = var.zone
    boot_disk {
        initialize_params {
             image = "projects/ubuntu-os-cloud/global/images/ubuntu-minimal-2204-jammy-v20250606"
        }
    }
    network_interface {
        subnetwork = var.subnet_id
        access_config {
            // Ephemeral IP
        }
    }
}