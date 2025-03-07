# This needs to be added explicitly to all modules
# relying on a non-hashicorp provider. See:
# https://discuss.hashicorp.com/t/using-a-non-hashicorp-provider-in-a-module/21841
terraform {
  required_version = ">= 1.8.0"
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "~> 0.4"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}
