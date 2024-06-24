resource "google_dns_managed_zone" "gke_hello_cluster_c17e385a_dns" {
  cloud_logging_config {
    enable_logging = false
  }

  description   = "Private zone for GKE cluster \"hello-cluster\" with cluster suffix \"cluster.local.\" in project \"keima-akito-build-shop\" with scope \"CLUSTER_SCOPE\""
  dns_name      = "cluster.local."
  force_destroy = false

  labels = {
    goog-gke-node = "clouddns-autopilot"
  }

  name = "gke-hello-cluster-c17e385a-dns"

  private_visibility_config {
    gke_clusters {
      gke_cluster_name = "projects/keima-akito-build-shop/locations/asia-northeast1/clusters/hello-cluster"
    }
  }

  project    = "keima-akito-build-shop"
  visibility = "private"
}
# terraform import google_dns_managed_zone.gke_hello_cluster_c17e385a_dns projects/keima-akito-build-shop/managedZones/gke-hello-cluster-c17e385a-dns
