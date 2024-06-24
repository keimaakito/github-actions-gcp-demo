resource "google_project_service" "cloudtrace_googleapis_com" {
  project = "260900167482"
  service = "cloudtrace.googleapis.com"
}
# terraform import google_project_service.cloudtrace_googleapis_com 260900167482/cloudtrace.googleapis.com
