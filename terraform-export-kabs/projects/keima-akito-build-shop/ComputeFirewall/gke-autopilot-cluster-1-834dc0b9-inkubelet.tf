resource "google_compute_firewall" "gke_autopilot_cluster_1_834dc0b9_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-autopilot-cluster-1-834dc0b9-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 999
  project       = "keima-akito-build-shop"
  source_ranges = ["10.55.128.0/17"]
  source_tags   = ["gke-autopilot-cluster-1-834dc0b9-node"]
  target_tags   = ["gke-autopilot-cluster-1-834dc0b9-node"]
}
# terraform import google_compute_firewall.gke_autopilot_cluster_1_834dc0b9_inkubelet projects/keima-akito-build-shop/global/firewalls/gke-autopilot-cluster-1-834dc0b9-inkubelet
