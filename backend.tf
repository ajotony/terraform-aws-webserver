terraform {
  backend "s3" {
    bucket       = "hug-lagos-aws-tf-state-2026"
    key          = "terraform-aws-webserver/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}