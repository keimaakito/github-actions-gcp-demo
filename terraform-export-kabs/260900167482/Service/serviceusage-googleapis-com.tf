resource "google_project_service" "serviceusage_googleapis_com" {
  project = "260900167482"
  service = "serviceusage.googleapis.com"
}
# terraform import google_project_service.serviceusage_googleapis_com 260900167482/serviceusage.googleapis.com
