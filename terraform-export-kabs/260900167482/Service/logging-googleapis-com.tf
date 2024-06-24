resource "google_project_service" "logging_googleapis_com" {
  project = "260900167482"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 260900167482/logging.googleapis.com
