terraform {
  backend "s3" {
    bucket       = "s3-backend-test-dev-claude"
    key          = "test/terraform.tfstate"
    region       = "us-east-1" # region of the state bucket, not of the TEST resources (us-east-2)
    use_lockfile = true
  }
}
