resource "google_compute_forwarding_rule" "af98b8a02778041cf98f568350896c68" {
  description           = "{\"kubernetes.io/service-name\":\"default/nginx-1-service\"}"
  ip_address            = "34.85.74.242"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  name                  = "af98b8a02778041cf98f568350896c68"
  network_tier          = "PREMIUM"
  port_range            = "8085-8085"
  project               = "keima-akito-build-shop"
  region                = "asia-northeast1"
  target                = "https://www.googleapis.com/compute/beta/projects/keima-akito-build-shop/regions/asia-northeast1/targetPools/af98b8a02778041cf98f568350896c68"
}
# terraform import google_compute_forwarding_rule.af98b8a02778041cf98f568350896c68 projects/keima-akito-build-shop/regions/asia-northeast1/forwardingRules/af98b8a02778041cf98f568350896c68
