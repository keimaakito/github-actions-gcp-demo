resource "google_artifact_registry_repository" "demo" {
  cleanup_policy_dry_run = true
  format                 = "DOCKER"
  location               = "asia-northeast1"
  mode                   = "STANDARD_REPOSITORY"
  project                = "keima-akito-build-shop"
  repository_id          = "demo"
}
# terraform import google_artifact_registry_repository.demo projects/keima-akito-build-shop/locations/asia-northeast1/repositories/demo
