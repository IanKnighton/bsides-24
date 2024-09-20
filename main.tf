terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.3.0"
    }
    github = {
      source  = "integrations/github"
      version = "6.3.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-state-bsides24"
    prefix = "terraform/bsides24"
  }
}

provider "google" {
  region  = "us-west3"
  project = "ddm-platform"
}