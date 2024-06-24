resource "google_container_cluster" "autopilot_cluster_1" {
  addons_config {
    dns_cache_config {
      enabled = true
    }

    gce_persistent_disk_csi_driver_config {
      enabled = true
    }

    gcp_filestore_csi_driver_config {
      enabled = true
    }

    gcs_fuse_csi_driver_config {
      enabled = true
    }

    horizontal_pod_autoscaling {
      disabled = false
    }

    http_load_balancing {
      disabled = false
    }

    network_policy_config {
      disabled = true
    }
  }

  binary_authorization {
    evaluation_mode = "DISABLED"
  }

  cluster_autoscaling {
    auto_provisioning_defaults {
      disk_size  = 0
      image_type = "COS_CONTAINERD"

      management {
        auto_repair  = true
        auto_upgrade = true
      }

      oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      service_account = "default"

      upgrade_settings {
        max_surge = 1
        strategy  = "SURGE"
      }
    }

    autoscaling_profile = "OPTIMIZE_UTILIZATION"
    enabled             = true

    resource_limits {
      maximum       = 1000000000
      resource_type = "cpu"
    }

    resource_limits {
      maximum       = 1000000000
      resource_type = "memory"
    }

    resource_limits {
      maximum       = 1000000000
      resource_type = "nvidia-tesla-t4"
    }

    resource_limits {
      maximum       = 1000000000
      resource_type = "nvidia-tesla-a100"
    }
  }

  cluster_ipv4_cidr = "10.55.128.0/17"

  cluster_telemetry {
    type = "ENABLED"
  }

  database_encryption {
    state = "DECRYPTED"
  }

  datapath_provider         = "LEGACY_DATAPATH"
  default_max_pods_per_node = 110

  default_snat_status {
    disabled = false
  }

  dns_config {
    cluster_dns        = "CLOUD_DNS"
    cluster_dns_domain = "cluster.local"
    cluster_dns_scope  = "CLUSTER_SCOPE"
  }

  enable_autopilot            = true
  enable_intranode_visibility = true
  enable_shielded_nodes       = true

  gateway_api_config {
    channel = "CHANNEL_STANDARD"
  }

  ip_allocation_policy {
    cluster_ipv4_cidr_block      = "10.55.128.0/17"
    cluster_secondary_range_name = "gke-autopilot-cluster-1-pods-834dc0b9"

    pod_cidr_overprovision_config {
      disabled = false
    }

    services_ipv4_cidr_block = "34.118.224.0/20"
    stack_type               = "IPV4"
  }

  location = "asia-northeast1"

  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  monitoring_config {
    advanced_datapath_observability_config {
      enable_metrics = false
    }

    enable_components = ["SYSTEM_COMPONENTS", "STORAGE", "POD", "DEPLOYMENT", "STATEFULSET", "DAEMONSET", "HPA"]

    managed_prometheus {
      enabled = true
    }
  }

  name    = "autopilot-cluster-1"
  network = "projects/keima-akito-build-shop/global/networks/default"

  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }

  networking_mode = "VPC_NATIVE"

  node_config {
    disk_size_gb    = 100
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    logging_variant = "DEFAULT"
    machine_type    = "e2-small"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]

    reservation_affinity {
      consume_reservation_type = "NO_RESERVATION"
    }

    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
      enable_secure_boot          = true
    }

    taint {
      effect = "NO_SCHEDULE"
      key    = "cloud.google.com/gke-quick-remove"
      value  = "true"
    }

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_locations = ["asia-northeast1-a", "asia-northeast1-b", "asia-northeast1-c"]

  node_pool_defaults {
    node_config_defaults {
      gcfs_config {
        enabled = true
      }

      logging_variant = "DEFAULT"
    }
  }

  node_version = "1.29.4-gke.1043002"

  notification_config {
    pubsub {
      enabled = false
    }
  }

  pod_security_policy_config {
    enabled = false
  }

  private_cluster_config {
    master_global_access_config {
      enabled = false
    }
  }

  project = "keima-akito-build-shop"

  protect_config {
    workload_config {
      audit_mode = "BASIC"
    }

    workload_vulnerability_mode = "BASIC"
  }

  release_channel {
    channel = "REGULAR"
  }

  security_posture_config {
    mode               = "BASIC"
    vulnerability_mode = "VULNERABILITY_BASIC"
  }

  service_external_ips_config {
    enabled = false
  }

  subnetwork = "projects/keima-akito-build-shop/regions/asia-northeast1/subnetworks/default"

  vertical_pod_autoscaling {
    enabled = true
  }

  workload_identity_config {
    workload_pool = "keima-akito-build-shop.svc.id.goog"
  }
}
# terraform import google_container_cluster.autopilot_cluster_1 keima-akito-build-shop/asia-northeast1/autopilot-cluster-1
