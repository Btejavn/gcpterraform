provider "googleworkspace" {
  credentials = file("/Users/bchittabathini/Downloads/service-account-key.json")
  domain      = "btejainfo.xyz"
}

resource "googleworkspace_role_assignment" "service_account_token_creator" {
  role       = "roles/iam.serviceAccountTokenCreator"
  member     = "serviceAccount:your-service-account@your-project.iam.gserviceaccount.com"
}

resource "googleworkspace_role_assignment" "group_administrator" {
  role       = "roles/admin"
  member     = "serviceAccount:your-service-account@your-project.iam.gserviceaccount.com"
}

resource "googleworkspace_role_assignment" "user_administrator" {
  role       = "roles/admin"
  member     = "serviceAccount:your-service-account@your-project.iam.gserviceaccount.com"
}
