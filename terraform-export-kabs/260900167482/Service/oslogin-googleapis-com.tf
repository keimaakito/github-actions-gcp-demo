resource "google_project_service" "oslogin_googleapis_com" {
  project = "260900167482"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 260900167482/oslogin.googleapis.com
