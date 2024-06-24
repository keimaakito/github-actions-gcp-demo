resource "google_compute_target_pool" "a9523e513fb5e4bfd8b21be370bf3a7c" {
  description      = "{\"kubernetes.io/service-name\":\"hello-namespace/hello-app-cloud-spanner\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/keima-akito-build-shop/global/httpHealthChecks/k8s-7b82060f35dd020b-node"]
  instances        = ["asia-northeast1-c/gk3-hello-cluster-pool-2-a9448ae8-hpzw"]
  name             = "a9523e513fb5e4bfd8b21be370bf3a7c"
  project          = "keima-akito-build-shop"
  region           = "asia-northeast1"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a9523e513fb5e4bfd8b21be370bf3a7c projects/keima-akito-build-shop/regions/asia-northeast1/targetPools/a9523e513fb5e4bfd8b21be370bf3a7c
