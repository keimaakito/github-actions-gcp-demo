resource "google_service_account" "gsa_helloapp" {
  account_id = "gsa-helloapp"
  project    = "keima-akito-build-shop"
}
# terraform import google_service_account.gsa_helloapp projects/keima-akito-build-shop/serviceAccounts/gsa-helloapp@keima-akito-build-shop.iam.gserviceaccount.com
