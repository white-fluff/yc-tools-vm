# Required variables.

# variable "iam_token" {
#   description = "IAM-Token"
#   type        = string
# }

variable "sa_key" {
  description = "The path to the service account key file"
  type        = string
}

variable "cloud_id" {
  description = "Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

# Optional variables.

variable "vm_name" {
  description = "Name of the VM being created"
  type        = string
  default     = "tools-vm"
}

variable "os_image_id" {
  description = "ID of OS image"
  type        = string
  default     = "fd89fsr61qsgfmegh9ju"
}

variable "instance_platform_id" {
  description = "ID of VM platform"
  type        = string
  default     = "standard-v3"
}

variable "zone" {
  description = "Resources availability zone in Yandex Cloud"
  type        = string
  default     = "ru-central1-b"
}