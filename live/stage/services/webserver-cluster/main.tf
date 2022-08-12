provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source = "git@github.com:achang209/terraform-modules.git//services/webserver-cluster?ref=v0.0.1"
  cluster_name = "webservers-stage"
  db_remote_state_bucket = "changs-terraform-state"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
  instance_type = "t2.micro"
  min_size = 2
  max_size = 2
  enable_autoscaling = false
}