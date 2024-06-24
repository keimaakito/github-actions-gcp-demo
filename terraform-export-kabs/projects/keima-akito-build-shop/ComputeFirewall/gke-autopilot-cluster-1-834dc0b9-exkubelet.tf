resource "google_compute_firewall" "gke_autopilot_cluster_1_834dc0b9_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-autopilot-cluster-1-834dc0b9-exkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 1000
  project       = "keima-akito-build-shop"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-autopilot-cluster-1-834dc0b9-node"]
}
# terraform import google_compute_firewall.gke_autopilot_cluster_1_834dc0b9_exkubelet projects/keima-akito-build-shop/global/firewalls/gke-autopilot-cluster-1-834dc0b9-exkubelet
