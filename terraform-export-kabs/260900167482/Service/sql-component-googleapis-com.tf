resource "google_project_service" "sql_component_googleapis_com" {
  project = "260900167482"
  service = "sql-component.googleapis.com"
}
# terraform import google_project_service.sql_component_googleapis_com 260900167482/sql-component.googleapis.com
