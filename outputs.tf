output "region_id" {
  description = "The name/id of the EKS cluster."
  value       = var.aws_region

}

output "repeat_msg" {
  value = local.name
}
