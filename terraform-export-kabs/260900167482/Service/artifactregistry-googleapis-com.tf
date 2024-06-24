resource "google_project_service" "artifactregistry_googleapis_com" {
  project = "260900167482"
  service = "artifactregistry.googleapis.com"
}
# terraform import google_project_service.artifactregistry_googleapis_com 260900167482/artifactregistry.googleapis.com
