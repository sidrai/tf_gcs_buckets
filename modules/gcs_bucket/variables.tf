variable "bucket_name" {
  description = "The name of the GCS bucket"
  type = string
}

variable "location" {
  description = "The location of the bucket"
  type = string
  default     = "US"
}
