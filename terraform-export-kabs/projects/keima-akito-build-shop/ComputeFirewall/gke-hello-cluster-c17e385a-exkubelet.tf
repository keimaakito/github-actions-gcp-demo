resource "google_compute_firewall" "gke_hello_cluster_c17e385a_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-hello-cluster-c17e385a-exkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 1000
  project       = "keima-akito-build-shop"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-hello-cluster-c17e385a-node"]
}
# terraform import google_compute_firewall.gke_hello_cluster_c17e385a_exkubelet projects/keima-akito-build-shop/global/firewalls/gke-hello-cluster-c17e385a-exkubelet
