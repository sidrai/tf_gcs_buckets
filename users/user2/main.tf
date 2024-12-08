module "gcs_bucket" {
  source      = "../../modules/gcs_bucket"
  bucket_name = var.bucket_name
  location    = var.location
}
