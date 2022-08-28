resource "gitlab_group" "tf-guests1" {
  name        = "tf-guests1"
  path        = "tf-guests1"
  description = "tf-guests1"
}

resource "gitlab_group" "tf-reporters1" {
  name        = "tf-reporters1"
  path        = "tf-reporters1"
  description = "tf-reporters1"
}

resource "gitlab_group" "tf-developers1" {
  name        = "tf-developers1"
  path        = "tf-developers1"
  description = "tf-developers1"
}


resource "gitlab_user" "tf-user1" {
  name             = "tf-user1"
  username         = "tf-user1"
  password         = "haslo123"
  email            = "tf-user1@localhost"
  is_admin         = false
  projects_limit   = 4
  can_create_group = false
  is_external      = true
  reset_password   = false
}

resource "gitlab_user" "tf-user2" {
  name             = "tf-user2"
  username         = "tf-user2"
  password         = "haslo123"
  email            = "tf-user2@localhost"
  is_admin         = false
  projects_limit   = 4
  can_create_group = false
  is_external      = true
  reset_password   = false
}




resource "gitlab_project_membership" "win1-developer1" {
  project_id   = "2"
  user_id      = gitlab_user.tf-user1.id
  access_level = "developer"
}

resource "gitlab_project_membership" "win1-reporter1" {
  project_id   = "2"
  user_id      = gitlab_user.tf-user2.id
  access_level = "reporter"
}