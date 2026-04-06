
terraform {
  backend "s3" {
    bucket = "vclusters"
    key    = "vcluster-dev2/terraform.tfstate"
    region = "us-west-rack-2"

    # Endpoints object (Terraform 1.10+)
    endpoints = {
      s3 = "https://s3-dev.appflex.io"
    }

    # MinIO-specific flags
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    use_path_style              = true  # updated from deprecated force_path_style
  }
}

# Optional AWS provider (only if you have AWS resources)
provider "aws" {
  region                     = "us-west-rack-2"

  # Prevent Terraform from calling AWS STS/IAM for MinIO backend
  skip_requesting_account_id  = true
  skip_credentials_validation = true
}
