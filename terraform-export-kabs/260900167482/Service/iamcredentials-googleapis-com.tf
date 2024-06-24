resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "260900167482"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 260900167482/iamcredentials.googleapis.com
