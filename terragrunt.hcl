# Determine our environment name from the folder name
locals {
    env_name = replace(path_relative_to_include(), "environments/", "")
}

inputs = {
    env_name= local.env_name
}

# Remote state stored in Amazon S3
remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "your-bucket-name"

    key = "envs/${local.env_name}/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    profile        = "your-aws-iam-profile"
  }
}