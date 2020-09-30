variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to add to resources"
}

variable "stage_name" {
  type        = string
  default     = "test"
  description = "API Gateway Stage Name"
}

variable "apigw_name" {
  type        = string
  default     = "some-api"
  description = "API Gateway Name"
}