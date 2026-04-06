terraform {
  backend "s3" {
    bucket   = "vclusters"
    key      = "vcluster-dev2/terraform.tfstate"
    region   = "us-west-rack-2"
    endpoint = "http://minio:9000"

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }
}
