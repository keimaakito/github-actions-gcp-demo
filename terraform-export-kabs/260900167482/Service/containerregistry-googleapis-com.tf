resource "google_project_service" "containerregistry_googleapis_com" {
  project = "260900167482"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 260900167482/containerregistry.googleapis.com
