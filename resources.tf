resource "google_storage_bucket" "auto-expire" {
  name          = "terraform-state-bsides24"
  location      = "US"
  force_destroy = true
}

resource "github_repository" "bsides24" {
  name = "bsides-24"

  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true

  visibility = "public"
}