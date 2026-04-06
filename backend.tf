
terraform {
  backend "s3" {
    bucket = "vclusters"
    key    = "vcluster-dev2/terraform.tfstate"
    region = "us-west-rack-2"

    # Use new syntax instead of deprecated 'endpoint'
    endpoints {
      s3 = "https://s3-dev.appflex.io"
    }

    # MinIO-specific flags
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }
}

# AWS provider block (optional, only if you need AWS resources)
# Skip all AWS API calls for backend validation
provider "aws" {
  region                     = "us-west-rack-2"
  skip_requesting_account_id  = true
  skip_credentials_validation = true
}
