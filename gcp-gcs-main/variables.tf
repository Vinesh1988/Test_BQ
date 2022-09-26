variable "project" {
  type        = string
  description = "name of the gcp project"
}

variable "name" {
  type        = string
  description = "name of the gcs bucket"
}

variable "location" {
  type        = string
  description = "location of the bucket"
}

variable "storage_class" {
  type        = string
  description = "storage class of the bucket"
  default     = "standard"
}