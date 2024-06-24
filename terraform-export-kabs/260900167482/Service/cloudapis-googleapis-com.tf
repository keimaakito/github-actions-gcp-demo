resource "google_project_service" "cloudapis_googleapis_com" {
  project = "260900167482"
  service = "cloudapis.googleapis.com"
}
# terraform import google_project_service.cloudapis_googleapis_com 260900167482/cloudapis.googleapis.com
