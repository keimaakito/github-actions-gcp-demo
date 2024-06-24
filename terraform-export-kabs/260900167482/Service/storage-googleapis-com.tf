resource "google_project_service" "storage_googleapis_com" {
  project = "260900167482"
  service = "storage.googleapis.com"
}
# terraform import google_project_service.storage_googleapis_com 260900167482/storage.googleapis.com
