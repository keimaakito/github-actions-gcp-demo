resource "google_dns_managed_zone" "gke_autopilot_cluster_1_834dc0b9_dns" {
  cloud_logging_config {
    enable_logging = false
  }

  description   = "Private zone for GKE cluster \"autopilot-cluster-1\" with cluster suffix \"cluster.local.\" in project \"keima-akito-build-shop\" with scope \"CLUSTER_SCOPE\""
  dns_name      = "cluster.local."
  force_destroy = false

  labels = {
    goog-gke-node = "clouddns-autopilot"
  }

  name = "gke-autopilot-cluster-1-834dc0b9-dns"

  private_visibility_config {
    gke_clusters {
      gke_cluster_name = "projects/keima-akito-build-shop/locations/asia-northeast1/clusters/autopilot-cluster-1"
    }
  }

  project    = "keima-akito-build-shop"
  visibility = "private"
}
# terraform import google_dns_managed_zone.gke_autopilot_cluster_1_834dc0b9_dns projects/keima-akito-build-shop/managedZones/gke-autopilot-cluster-1-834dc0b9-dns
