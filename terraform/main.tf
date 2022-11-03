module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "konfig-dev@tabnergc.com"
    AccountName               = "dev-aft"
    ManagedOrganizationalUnit = "aft-tabner"
    SSOUserEmail              = "tohid.mulani@tabnerglobal.com"
    SSOUserFirstName          = "Tohid"
    SSOUserLastName           = "Mulani"
  }

  account_tags = {
    "Environment" = "dev"
  }

  change_management_parameters = {
    change_requested_by = "Tohid Mulani"
    change_reason       = "Create AWS account for dev environment"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "dev-aft"
}
