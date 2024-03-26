data "aws_eks_cluster_auth" "eks" {
  name = module.dev_eks.cluster_id
}

provider "aws" {
  default_tags {
    tags = {
      Environment = var.environment
      Owner       = "vitali"
    }
  }
}

provider "kubernetes" {
  host                   = module.dev_eks.endpoint
  cluster_ca_certificate = module.dev_eks.ca_certificate
  token                  = data.aws_eks_cluster_auth.eks.token
}

provider "helm" {
  kubernetes {
    host                   = module.dev_eks.endpoint
    cluster_ca_certificate = module.dev_eks.ca_certificate
    token                  = data.aws_eks_cluster_auth.eks.token
  }
}

provider "kubectl" {
  host                   = module.dev_eks.endpoint
  cluster_ca_certificate = module.dev_eks.ca_certificate
}
