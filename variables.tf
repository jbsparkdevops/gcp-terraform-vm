variable "credentials_json" {
  type        = string
  description = "GCP service account credentials (injected from GitHub Secrets)"
}

variable "project" {
  type        = string
  description = "The GCP project ID to deploy resources into"
}

variable "region" {
  type        = string
  description = "The GCP region to deploy resources into"
}

variable "zone" {
  type        = string
  description = "The GCP zone to deploy resources into"
}
