resource "google_project_service" "dns_googleapis_com" {
  project = "260900167482"
  service = "dns.googleapis.com"
}
# terraform import google_project_service.dns_googleapis_com 260900167482/dns.googleapis.com
