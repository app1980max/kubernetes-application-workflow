terraform {
  backend "s3" {
    bucket = "vclusters"
    key    = "vcluster-dev2/terraform.tfstate"
    region = "us-east-1"

    endpoints = {
      s3 = "https://s3-api.appflex.io"
    }

    force_path_style = true

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true

    # 🔥 IMPORTANT FOR MINIO + TERRAFORM
    skip_s3_checksum = true
  }
}

