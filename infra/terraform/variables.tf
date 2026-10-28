variable "aws_region" {
  description = "AWS region for all resources except CloudFront/ACM globals"
  type        = string
  default     = "us-west-2"
}

variable "account_id" {
  description = "AWS account ID"
  type        = string
  default     = "your-account-id"
}

variable "alert_emails" {
  description = "Email addresses subscribed to CloudWatch alerts and Budget notifications. In CI set via the TF_VAR_alert_emails env var (GitHub Actions variable ALERT_EMAILS); locally via a gitignored terraform.tfvars. Value must be an HCL/JSON list, e.g. [\"you@example.com\"]."
  type        = list(string)
  default     = []
}
