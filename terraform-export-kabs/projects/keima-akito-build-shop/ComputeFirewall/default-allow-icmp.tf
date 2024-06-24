resource "google_compute_firewall" "default_allow_icmp" {
  allow {
    protocol = "icmp"
  }

  description   = "Allow ICMP from anywhere"
  direction     = "INGRESS"
  name          = "default-allow-icmp"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 65534
  project       = "keima-akito-build-shop"
  source_ranges = ["0.0.0.0/0"]
}
# terraform import google_compute_firewall.default_allow_icmp projects/keima-akito-build-shop/global/firewalls/default-allow-icmp
