resource "google_compute_firewall" "gke_hello_cluster_c17e385a_all" {
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
  name          = "gke-hello-cluster-c17e385a-all"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 1000
  project       = "keima-akito-build-shop"
  source_ranges = ["10.126.0.0/17"]
  target_tags   = ["gke-hello-cluster-c17e385a-node"]
}
# terraform import google_compute_firewall.gke_hello_cluster_c17e385a_all projects/keima-akito-build-shop/global/firewalls/gke-hello-cluster-c17e385a-all
