resource "google_service_account" "260900167482_compute" {
  account_id   = "260900167482-compute"
  display_name = "Compute Engine default service account"
  project      = "keima-akito-build-shop"
}
# terraform import google_service_account.260900167482_compute projects/keima-akito-build-shop/serviceAccounts/260900167482-compute@keima-akito-build-shop.iam.gserviceaccount.com
