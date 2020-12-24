terraform {
  required_version = "~> 0.14.3"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.14.0"
    }
  }
}

variable "newrelic_personal_apikey" {}
variable "newrelic_account_id" {}
variable "newrelic_region" {}

provider "newrelic" {
  account_id = var.newrelic_account_id
  api_key = var.newrelic_personal_apikey    # usually prefixed with 'NRAK'
  region = var.newrelic_region                     # Valid regions are US and EU
}