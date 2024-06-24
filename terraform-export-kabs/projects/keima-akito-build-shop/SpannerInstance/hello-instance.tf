resource "google_spanner_instance" "hello_instance" {
  config           = "projects/keima-akito-build-shop/instanceConfigs/regional-asia-northeast1"
  display_name     = "Spanner sample instance"
  force_destroy    = false
  name             = "hello-instance"
  processing_units = 100
  project          = "keima-akito-build-shop"
}
# terraform import google_spanner_instance.hello_instance projects/keima-akito-build-shop/instances/hello-instance
