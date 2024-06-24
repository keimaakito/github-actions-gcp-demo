resource "google_compute_firewall" "default_allow_internal" {
  allow {
    ports    = ["0-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["0-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  description   = "Allow internal traffic on the default network"
  direction     = "INGRESS"
  name          = "default-allow-internal"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 65534
  project       = "keima-akito-build-shop"
  source_ranges = ["10.128.0.0/9"]
}
# terraform import google_compute_firewall.default_allow_internal projects/keima-akito-build-shop/global/firewalls/default-allow-internal
