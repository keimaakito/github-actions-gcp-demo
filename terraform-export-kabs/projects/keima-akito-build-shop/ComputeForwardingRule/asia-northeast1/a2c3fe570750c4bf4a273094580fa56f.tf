resource "google_compute_forwarding_rule" "a2c3fe570750c4bf4a273094580fa56f" {
  description           = "{\"kubernetes.io/service-name\":\"default/nginx\"}"
  ip_address            = "34.84.209.5"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "a2c3fe570750c4bf4a273094580fa56f"
  network_tier          = "PREMIUM"
  port_range            = "80-80"
  project               = "keima-akito-build-shop"
  region                = "asia-northeast1"
  target                = "https://www.googleapis.com/compute/beta/projects/keima-akito-build-shop/regions/asia-northeast1/targetPools/a2c3fe570750c4bf4a273094580fa56f"
}
# terraform import google_compute_forwarding_rule.a2c3fe570750c4bf4a273094580fa56f projects/keima-akito-build-shop/regions/asia-northeast1/forwardingRules/a2c3fe570750c4bf4a273094580fa56f
