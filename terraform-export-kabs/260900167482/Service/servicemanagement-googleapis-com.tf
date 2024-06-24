resource "google_project_service" "servicemanagement_googleapis_com" {
  project = "260900167482"
  service = "servicemanagement.googleapis.com"
}
# terraform import google_project_service.servicemanagement_googleapis_com 260900167482/servicemanagement.googleapis.com
