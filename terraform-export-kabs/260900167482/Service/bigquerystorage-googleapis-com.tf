resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "260900167482"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 260900167482/bigquerystorage.googleapis.com
