resource "google_compute_forwarding_rule" "a9523e513fb5e4bfd8b21be370bf3a7c" {
  description           = "{\"kubernetes.io/service-name\":\"hello-namespace/hello-app-cloud-spanner\"}"
  ip_address            = "34.146.19.68"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "a9523e513fb5e4bfd8b21be370bf3a7c"
  network_tier          = "PREMIUM"
  port_range            = "80-80"
  project               = "keima-akito-build-shop"
  region                = "asia-northeast1"
  target                = "https://www.googleapis.com/compute/beta/projects/keima-akito-build-shop/regions/asia-northeast1/targetPools/a9523e513fb5e4bfd8b21be370bf3a7c"
}
# terraform import google_compute_forwarding_rule.a9523e513fb5e4bfd8b21be370bf3a7c projects/keima-akito-build-shop/regions/asia-northeast1/forwardingRules/a9523e513fb5e4bfd8b21be370bf3a7c
