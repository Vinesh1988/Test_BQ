
/*
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.36.0"
    }
  }
}
*/

provider "google" {
    credentials = "key.json"
    project = ""
}

module "bucket" {
  source = "./module/bucket"

  name                        = "df-${var.Source_EIM}-${var.Source_short_name}-${var.environment}"
  location                    = var.location
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy               = var.force_destroy
  labels                      = var.labels
}

locals {
  objects = [
    for object in var.objects : {
      name    = object.name
      content = lookup(object, "content", null)
      source  = lookup(object, "source", null)
      bucket  = lookup(object, "bucket", module.bucket.bucket.name)
    }
  ]
}


module "objects" {
  source = "./module/objects"
  objects = local.objects
}

module "dataset" {
  source = "./module/dataset"
   description           = var.description
   location              = var.location
   duration              = var.duration
}
