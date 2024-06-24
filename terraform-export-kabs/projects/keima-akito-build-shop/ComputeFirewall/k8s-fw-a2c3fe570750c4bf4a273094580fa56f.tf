resource "google_compute_firewall" "k8s_fw_a2c3fe570750c4bf4a273094580fa56f" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"default/nginx\", \"kubernetes.io/service-ip\":\"34.84.209.5\"}"
  destination_ranges = ["34.84.209.5"]
  direction          = "INGRESS"
  name               = "k8s-fw-a2c3fe570750c4bf4a273094580fa56f"
  network            = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority           = 1000
  project            = "keima-akito-build-shop"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-autopilot-cluster-1-834dc0b9-node"]
}
# terraform import google_compute_firewall.k8s_fw_a2c3fe570750c4bf4a273094580fa56f projects/keima-akito-build-shop/global/firewalls/k8s-fw-a2c3fe570750c4bf4a273094580fa56f
