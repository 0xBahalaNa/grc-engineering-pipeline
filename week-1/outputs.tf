output "bucket_name" {
  description = "Primary bucket name."
  value       = aws_s3_bucket.primary.id
}

output "bucket_arn" {
  description = "Primary bucket ARN."
  value       = aws_s3_bucket.primary.arn
}

output "log_bucket_name" {
  description = "Log bucket name."
  value       = aws_s3_bucket.log.id
}

output "encryption_algorithm" {
  description = "An attestation of encryption at rest."
  value       = tolist(aws_s3_bucket_server_side_encryption_configuration.primary.rule)[0].apply_server_side_encryption_by_default[0].sse_algorithm
}