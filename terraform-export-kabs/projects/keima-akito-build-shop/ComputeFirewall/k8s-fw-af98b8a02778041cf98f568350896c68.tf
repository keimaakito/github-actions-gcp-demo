resource "google_compute_firewall" "k8s_fw_af98b8a02778041cf98f568350896c68" {
  allow {
    ports    = ["8085"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"default/nginx-1-service\", \"kubernetes.io/service-ip\":\"34.85.74.242\"}"
  destination_ranges = ["34.85.74.242"]
  direction          = "INGRESS"
  name               = "k8s-fw-af98b8a02778041cf98f568350896c68"
  network            = "https://www.googleapis.com/compute/v1/projects/keima-akito-build-shop/global/networks/default"
  priority           = 1000
  project            = "keima-akito-build-shop"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-autopilot-cluster-1-834dc0b9-node"]
}
# terraform import google_compute_firewall.k8s_fw_af98b8a02778041cf98f568350896c68 projects/keima-akito-build-shop/global/firewalls/k8s-fw-af98b8a02778041cf98f568350896c68
