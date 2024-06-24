resource "google_project_service" "dataplex_googleapis_com" {
  project = "260900167482"
  service = "dataplex.googleapis.com"
}
# terraform import google_project_service.dataplex_googleapis_com 260900167482/dataplex.googleapis.com
