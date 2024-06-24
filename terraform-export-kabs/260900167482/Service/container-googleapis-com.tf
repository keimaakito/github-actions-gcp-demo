resource "google_project_service" "container_googleapis_com" {
  project = "260900167482"
  service = "container.googleapis.com"
}
# terraform import google_project_service.container_googleapis_com 260900167482/container.googleapis.com
