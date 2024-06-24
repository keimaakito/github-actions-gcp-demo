resource "google_compute_firewall" "default_allow_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow SSH from anywhere"
  direction     = "INGRESS"
  name          = "default-allow-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 65534
  project       = "keima-akito-build-shop"
  source_ranges = ["0.0.0.0/0"]
}
# terraform import google_compute_firewall.default_allow_ssh projects/keima-akito-build-shop/global/firewalls/default-allow-ssh
