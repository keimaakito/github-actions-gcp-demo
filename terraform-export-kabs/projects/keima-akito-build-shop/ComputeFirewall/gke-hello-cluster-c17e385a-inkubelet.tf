resource "google_compute_firewall" "gke_hello_cluster_c17e385a_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-hello-cluster-c17e385a-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 999
  project       = "keima-akito-build-shop"
  source_ranges = ["10.126.0.0/17"]
  source_tags   = ["gke-hello-cluster-c17e385a-node"]
  target_tags   = ["gke-hello-cluster-c17e385a-node"]
}
# terraform import google_compute_firewall.gke_hello_cluster_c17e385a_inkubelet projects/keima-akito-build-shop/global/firewalls/gke-hello-cluster-c17e385a-inkubelet
