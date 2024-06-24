resource "google_compute_firewall" "gke_hello_cluster_c17e385a_vms" {
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
  name          = "gke-hello-cluster-c17e385a-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority      = 1000
  project       = "keima-akito-build-shop"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-hello-cluster-c17e385a-node"]
}
# terraform import google_compute_firewall.gke_hello_cluster_c17e385a_vms projects/keima-akito-build-shop/global/firewalls/gke-hello-cluster-c17e385a-vms
