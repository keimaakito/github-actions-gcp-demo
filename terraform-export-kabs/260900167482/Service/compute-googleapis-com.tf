resource "google_project_service" "compute_googleapis_com" {
  project = "260900167482"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 260900167482/compute.googleapis.com
