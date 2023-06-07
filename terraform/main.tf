terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.90.0"
    }
  }
}

provider "yandex" {
  service_account_key_file = "${file(var.sa_key)}"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

resource "yandex_compute_instance" "toolsVM" {
    name        = var.vm_name
    platform_id = var.instance_platform_id 
    zone        = var.zone
    
    scheduling_policy {
        preemptible = true
    }

    resources {
        cores  = 2
        memory = 4
    }

    boot_disk {
        initialize_params {
            image_id = var.os_image_id 
            type     = "network-ssd" 
            size     = 20
        }
    }

    network_interface {
        subnet_id = var.subnet_id 
        nat       = true
    }

    metadata = {
        user-data = "${file("metadata_test.yaml")}"
    }
}

output "nat_ip_address" {
    value = yandex_compute_instance.toolsVM.network_interface.0.nat_ip_address
}