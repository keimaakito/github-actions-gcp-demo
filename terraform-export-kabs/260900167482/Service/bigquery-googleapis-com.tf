resource "google_project_service" "bigquery_googleapis_com" {
  project = "260900167482"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 260900167482/bigquery.googleapis.com
