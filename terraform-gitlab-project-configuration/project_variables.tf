resource "gitlab_project_variable" "artifactory_api" {
  project   = "2"
  key       = "ARTIFACTORY_URL"
  value     = "http://docker:8081"
  protected = false
}

resource "gitlab_project_variable" "artifactory_user" {
  project   = "2"
  key       = "ARTIFACTORY_USER"
  value     = "admin"
  protected = false
}


resource "gitlab_project_variable" "artifactory_password" {
  project   = "2"
  key       = "ARTIFACTORY_PASSWORD"
  value     = "Password123!"
  protected = false
}

resource "gitlab_project_variable" "artifactory_repo_key" {
  project   = "2"
  key       = "ARTIFACTORY_REPO_KEY"
  value     = "prj1-repo1"
  protected = false
}