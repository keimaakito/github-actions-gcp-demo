resource "google_project_service" "datastore_googleapis_com" {
  project = "260900167482"
  service = "datastore.googleapis.com"
}
# terraform import google_project_service.datastore_googleapis_com 260900167482/datastore.googleapis.com
