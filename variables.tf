variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone"
  type        = string
  default     = "us-central1-c"
}

variable "instance_name" {
  description = "Name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type"
  type        = string
  default     = "e2-medium"
}

variable "boot_image" {
  description = "Boot disk image"
  type        = string
  default     = "projects/debian-cloud/global/images/debian-12-bookworm-v20250910"
}

variable "subnetwork" {
  description = "Subnetwork self-link or name"
  type        = string
}

variable "service_account_email" {
  description = "Service account email"
  type        = string
}

variable "scopes" {
  description = "List of scopes for the service account"
  type        = list(string)
  default = [
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/trace.append"
  ]
}

variable "ops_agent_policy" {
  description = "Ops agent policy label"
  type        = string
  default     = "v2-x86-template-1-4-0"
}
