resource "google_project_service" "monitoring_googleapis_com" {
  project = "260900167482"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 260900167482/monitoring.googleapis.com
