resource "google_project_service" "cloud_storage" {
    service = "storage.googleapis.com"
}