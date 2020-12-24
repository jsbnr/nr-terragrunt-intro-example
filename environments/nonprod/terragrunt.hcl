include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../src"
  #source = "github.com/username/repo.git"
}

inputs = {
    newrelic_personal_api_key = "NRAK-YOUR-NEWRELIC-API-KEY-HERE" 
    newrelic_account_id = "0" 
    newrelic_region = "US"

    cpu_critical = 50
    cpu_warning = 40 
    diskPercent = 98
}