locals {
  name = var.aws_region
  #name = "${local.owners}-${local.environment}"
  eks_cluster_name = "${local.name}-11"
}