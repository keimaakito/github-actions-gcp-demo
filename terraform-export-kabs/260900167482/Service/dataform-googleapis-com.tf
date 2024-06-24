resource "google_project_service" "dataform_googleapis_com" {
  project = "260900167482"
  service = "dataform.googleapis.com"
}
# terraform import google_project_service.dataform_googleapis_com 260900167482/dataform.googleapis.com
