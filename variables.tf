variable "alert_email" {
  description = "The email address to receive billing alerts"
  type        = string
}

variable "monthly_billing_threshold" {
  description = "The threshold for monthly billing alerts"
  type        = number
}

variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}