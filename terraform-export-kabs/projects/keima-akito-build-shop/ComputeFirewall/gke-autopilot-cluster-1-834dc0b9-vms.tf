resource "google_compute_firewall" "gke_autopilot_cluster_1_834dc0b9_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  direction     = "INGRESS"
  name          = "gke-autopilot-cluster-1-834dc0b9-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 1000
  project       = "keima-akito-build-shop"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-autopilot-cluster-1-834dc0b9-node"]
}
# terraform import google_compute_firewall.gke_autopilot_cluster_1_834dc0b9_vms projects/keima-akito-build-shop/global/firewalls/gke-autopilot-cluster-1-834dc0b9-vms
