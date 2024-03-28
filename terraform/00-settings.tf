terraform {
  required_version = "~> 1.6.2"

  backend "gcs" {
    bucket = "disco-freedom-409407-actions-tfstate"
    prefix = "terraform/state/stage"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.39.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.21.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.12.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.26.0"
    }
  }
}
