
terraform {
  backend "s3" {
    bucket = "vclusters"
    key    = "vcluster-dev2/terraform.tfstate"
    region = "us-west-rack-2"

    endpoints = {
      s3 = "https://s3-dev.appflex.io"
    }

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    use_path_style              = true
  }
}

