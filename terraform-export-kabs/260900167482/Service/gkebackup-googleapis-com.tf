resource "google_project_service" "gkebackup_googleapis_com" {
  project = "260900167482"
  service = "gkebackup.googleapis.com"
}
# terraform import google_project_service.gkebackup_googleapis_com 260900167482/gkebackup.googleapis.com
