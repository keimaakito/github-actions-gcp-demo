resource "google_project_service" "spanner_googleapis_com" {
  project = "260900167482"
  service = "spanner.googleapis.com"
}
# terraform import google_project_service.spanner_googleapis_com 260900167482/spanner.googleapis.com
