resource "google_project_service" "autoscaling_googleapis_com" {
  project = "260900167482"
  service = "autoscaling.googleapis.com"
}
# terraform import google_project_service.autoscaling_googleapis_com 260900167482/autoscaling.googleapis.com
