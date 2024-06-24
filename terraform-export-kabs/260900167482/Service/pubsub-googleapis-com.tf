resource "google_project_service" "pubsub_googleapis_com" {
  project = "260900167482"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 260900167482/pubsub.googleapis.com
