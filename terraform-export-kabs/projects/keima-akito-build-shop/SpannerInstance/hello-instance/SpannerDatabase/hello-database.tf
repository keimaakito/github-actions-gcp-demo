resource "google_spanner_database" "hello_database" {
  database_dialect         = "GOOGLE_STANDARD_SQL"
  instance                 = "hello-instance"
  name                     = "hello-database"
  project                  = "keima-akito-build-shop"
  version_retention_period = "1h"
}
# terraform import google_spanner_database.hello_database projects/keima-akito-build-shop/instances/hello-instance/databases/hello-database
