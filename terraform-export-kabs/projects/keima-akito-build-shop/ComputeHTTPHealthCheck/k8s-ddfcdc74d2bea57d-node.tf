resource "google_compute_http_health_check" "k8s_ddfcdc74d2bea57d_node" {
  check_interval_sec  = 8
  description         = "{\"kubernetes.io/service-name\":\"k8s-ddfcdc74d2bea57d-node\"}"
  healthy_threshold   = 1
  name                = "k8s-ddfcdc74d2bea57d-node"
  port                = 10256
  project             = "keima-akito-build-shop"
  request_path        = "/healthz"
  timeout_sec         = 1
  unhealthy_threshold = 3
}
# terraform import google_compute_http_health_check.k8s_ddfcdc74d2bea57d_node projects/keima-akito-build-shop/global/httpHealthChecks/k8s-ddfcdc74d2bea57d-node
