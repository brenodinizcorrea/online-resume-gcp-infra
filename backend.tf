terraform {
  backend "gcs" {
    bucket = "online-resume-gcp-infra"
    prefix = "tfstate"
  }
}