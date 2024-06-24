resource "google_service_account" "github_actions" {
  account_id   = "github-actions"
  display_name = "github-actions"
  project      = "keima-akito-build-shop"
}
# terraform import google_service_account.github_actions projects/keima-akito-build-shop/serviceAccounts/github-actions@keima-akito-build-shop.iam.gserviceaccount.com
