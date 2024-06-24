resource "google_compute_target_pool" "af98b8a02778041cf98f568350896c68" {
  description      = "{\"kubernetes.io/service-name\":\"default/nginx-1-service\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/keima-akito-build-shop/global/httpHealthChecks/k8s-ddfcdc74d2bea57d-node"]
  name             = "af98b8a02778041cf98f568350896c68"
  project          = "keima-akito-build-shop"
  region           = "asia-northeast1"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.af98b8a02778041cf98f568350896c68 projects/keima-akito-build-shop/regions/asia-northeast1/targetPools/af98b8a02778041cf98f568350896c68
