resource "google_logging_project_sink" "a_default" {
  destination            = "logging.googleapis.com/projects/keima-akito-build-shop/locations/global/buckets/_Default"
  filter                 = "NOT LOG_ID(\"cloudaudit.googleapis.com/activity\") AND NOT LOG_ID(\"externalaudit.googleapis.com/activity\") AND NOT LOG_ID(\"cloudaudit.googleapis.com/system_event\") AND NOT LOG_ID(\"externalaudit.googleapis.com/system_event\") AND NOT LOG_ID(\"cloudaudit.googleapis.com/access_transparency\") AND NOT LOG_ID(\"externalaudit.googleapis.com/access_transparency\")"
  name                   = "_Default"
  project                = "260900167482"
  unique_writer_identity = true
}
# terraform import google_logging_project_sink.a_default 260900167482###_Default
