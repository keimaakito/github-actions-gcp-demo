resource "google_project_service" "cloudasset_googleapis_com" {
  project = "260900167482"
  service = "cloudasset.googleapis.com"
}
# terraform import google_project_service.cloudasset_googleapis_com 260900167482/cloudasset.googleapis.com
