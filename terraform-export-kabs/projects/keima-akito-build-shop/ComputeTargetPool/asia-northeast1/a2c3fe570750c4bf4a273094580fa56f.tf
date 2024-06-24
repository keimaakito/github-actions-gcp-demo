resource "google_compute_target_pool" "a2c3fe570750c4bf4a273094580fa56f" {
  description      = "{\"kubernetes.io/service-name\":\"default/nginx\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/keima-akito-build-shop/global/httpHealthChecks/k8s-ddfcdc74d2bea57d-node"]
  name             = "a2c3fe570750c4bf4a273094580fa56f"
  project          = "keima-akito-build-shop"
  region           = "asia-northeast1"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a2c3fe570750c4bf4a273094580fa56f projects/keima-akito-build-shop/regions/asia-northeast1/targetPools/a2c3fe570750c4bf4a273094580fa56f
