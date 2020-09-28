variable "sns_topic_name" {
  description = "SNS Topic Name"
  type        = string
  default     = "some-name"
}

variable "bucket_name" {
  description = "S3 Bucket Name"
  type        = string
  default     = "some-name"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to add to resources"
}