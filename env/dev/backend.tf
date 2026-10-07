terraform {
  backend "s3" {
    bucket       = "s3-backend-test-dev-claude"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
