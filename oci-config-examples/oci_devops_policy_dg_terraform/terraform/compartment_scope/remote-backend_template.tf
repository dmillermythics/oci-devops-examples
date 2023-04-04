terraform {
  backend "s3" {
    bucket   = "oci_devops_policy_dg_terraform_bucket"
    key      = "${compartment_name}/terraform.tfstate"
    region   = "us-ashburn-1"
    endpoint = "https://iddsu14hgang.compat.objectstorage.us-ashburn-1.oraclecloud.com"
    shared_credentials_file     = "./cred_store"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
