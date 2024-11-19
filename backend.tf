terraform {
  backend "gcs" {
    bucket = "sandy-terraform-state"
    prefix = "tf/state"
  }
}
