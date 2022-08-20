terraform {
  backend "http" {

    address        = "http://gitlab/api/v4/projects/2/terraform/state/prod"
    lock_address   = "http://gitlab/api/v4/projects/2/terraform/state/prod"
    username       = "root"
    password       = "rUAgy58ywzv7_WxMna6J"
    unlock_address = "http://gitlab/api/v4/projects/2/terraform/state/prod/lock"
    lock_method    = "POST"
    unlock_method  = "DELETE"
    retry_wait_min = 5

  }


  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 3.16.1"
    }



  }
}


provider "gitlab" {

  token    = "rUAgy58ywzv7_WxMna6J"
  base_url = "http://gitlab/api/v4/"
  insecure = true
}