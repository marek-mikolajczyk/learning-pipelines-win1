resource "gitlab_project_variable" "artifactory_api" {
  project   = "2"
  key       = "ARTIFACTORY_URL"
  value     = "http://docker:8081"
  protected = false
}
