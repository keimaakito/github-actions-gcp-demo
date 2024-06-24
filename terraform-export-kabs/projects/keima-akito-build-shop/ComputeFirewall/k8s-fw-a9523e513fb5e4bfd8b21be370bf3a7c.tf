resource "google_compute_firewall" "k8s_fw_a9523e513fb5e4bfd8b21be370bf3a7c" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"hello-namespace/hello-app-cloud-spanner\", \"kubernetes.io/service-ip\":\"34.146.19.68\"}"
  destination_ranges = ["34.146.19.68"]
  direction          = "INGRESS"
  name               = "k8s-fw-a9523e513fb5e4bfd8b21be370bf3a7c"
  network            = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority           = 1000
  project            = "keima-akito-build-shop"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-hello-cluster-c17e385a-node"]
}
# terraform import google_compute_firewall.k8s_fw_a9523e513fb5e4bfd8b21be370bf3a7c projects/keima-akito-build-shop/global/firewalls/k8s-fw-a9523e513fb5e4bfd8b21be370bf3a7c
