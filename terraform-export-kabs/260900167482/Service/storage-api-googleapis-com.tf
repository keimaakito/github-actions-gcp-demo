resource "google_project_service" "storage_api_googleapis_com" {
  project = "260900167482"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 260900167482/storage-api.googleapis.com
