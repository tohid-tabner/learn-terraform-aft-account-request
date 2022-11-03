module "qa" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "konfig-qa@tabnergc.com"
    AccountName               = "qa-aft"
    ManagedOrganizationalUnit = "aft-tabner"
    SSOUserEmail              = "tohid.mulani@tabnerglobal.com"
    SSOUserFirstName          = "Tohid"
    SSOUserLastName           = "Mulani"
  }

  account_tags = {
    "Environment" = "qa"
  }

  change_management_parameters = {
    change_requested_by = "Tohid Mulani"
    change_reason       = "Create AWS account for qa environment"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "qa-aft"
}
