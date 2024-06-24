resource "google_project_service" "iam_googleapis_com" {
  project = "260900167482"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 260900167482/iam.googleapis.com
