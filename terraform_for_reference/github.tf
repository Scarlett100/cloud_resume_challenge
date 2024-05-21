terraform {

required_providers {

github = {

source = "integrations/github"

version = "~> 5.0"

}

}
}

# Configure the GitHub Provider

provider "github" {
 token = var.token # github token 
}

resource "github_repository" "example" {

name = "cloud_resume_challenge" 

description = "My repository created using Terraform for the cloud resume project" # description field.

visibility = "public" # Repository type 

}

