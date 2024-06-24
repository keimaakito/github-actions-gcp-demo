resource "google_compute_firewall" "k8s_7b82060f35dd020b_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/cluster-id\":\"7b82060f35dd020b\"}"
  destination_ranges = ["34.146.19.68"]
  direction          = "INGRESS"
  name               = "k8s-7b82060f35dd020b-node-http-hc"
  network            = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority           = 1000
  project            = "keima-akito-build-shop"
  source_ranges      = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags        = ["gke-hello-cluster-c17e385a-node"]
}
# terraform import google_compute_firewall.k8s_7b82060f35dd020b_node_http_hc projects/keima-akito-build-shop/global/firewalls/k8s-7b82060f35dd020b-node-http-hc
