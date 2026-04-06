
terraform {
  backend "s3" {
    bucket = "vclusters"
    key    = "vcluster-dev2/terraform.tfstate"
    region = "us-west-rack-2"

    # Correct object syntax for endpoints
    endpoints = {
      s3 = "https://s3-dev.appflex.io"
    }

    # MinIO-specific flags
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }
}

# Optional AWS provider (only if you manage AWS resources)
provider "aws" {
  region                     = "us-west-rack-2"
  skip_requesting_account_id  = true
  skip_credentials_validation = true
}
