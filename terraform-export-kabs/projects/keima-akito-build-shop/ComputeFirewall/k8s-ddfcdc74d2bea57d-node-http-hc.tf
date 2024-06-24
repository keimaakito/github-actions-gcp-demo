resource "google_compute_firewall" "k8s_ddfcdc74d2bea57d_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/cluster-id\":\"ddfcdc74d2bea57d\"}"
  destination_ranges = ["34.84.209.5"]
  direction          = "INGRESS"
  name               = "k8s-ddfcdc74d2bea57d-node-http-hc"
  network            = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority           = 1000
  project            = "keima-akito-build-shop"
  source_ranges      = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags        = ["gke-autopilot-cluster-1-834dc0b9-node"]
}
# terraform import google_compute_firewall.k8s_ddfcdc74d2bea57d_node_http_hc projects/keima-akito-build-shop/global/firewalls/k8s-ddfcdc74d2bea57d-node-http-hc
