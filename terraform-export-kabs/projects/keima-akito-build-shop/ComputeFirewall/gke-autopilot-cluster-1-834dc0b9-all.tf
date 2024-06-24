resource "google_compute_firewall" "gke_autopilot_cluster_1_834dc0b9_all" {
  allow {
    protocol = "ah"
  }

  allow {
    protocol = "esp"
  }

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "sctp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  direction     = "INGRESS"
  name          = "gke-autopilot-cluster-1-834dc0b9-all"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 1000
  project       = "keima-akito-build-shop"
  source_ranges = ["10.55.128.0/17"]
  target_tags   = ["gke-autopilot-cluster-1-834dc0b9-node"]
}
# terraform import google_compute_firewall.gke_autopilot_cluster_1_834dc0b9_all projects/keima-akito-build-shop/global/firewalls/gke-autopilot-cluster-1-834dc0b9-all
