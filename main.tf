locals {
  apis = [
    "storage.googleapis.com",
    "artifactregistry.googleapis.com",
    "secretmanager.googleapis.com",
  ]
}

resource "google_project_service" "services" {
  for_each = toset(local.apis)
  project  = var.project_name
  service  = each.value
}