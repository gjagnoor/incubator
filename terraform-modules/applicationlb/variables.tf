locals {
  envname = "${var.application}-${var.environment}"
}

// --------------------------
// General Variables
// --------------------------
variable "application" {
  type        = string
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "region" {
  type = string
}

variable "environment" {
  type = string
}

variable "tags" {
  default = { terraform_managed = "true" }
  type    = map(any)
}

// --------------------------
// Application Load Balancer Variables
// --------------------------

variable "public_subnet_ids" {
  type        = list(string)
  description = "Public Subnets for which the ALB will be associated with"
}

variable "acm_certificate_arn" {
  type        = string
  description = "Certificate to use for HTTPS listener"
}

variable "default_alb_url" {
  type        = string
  description = "Default URL to forward the user if there is no ALB route rules that match"
}
