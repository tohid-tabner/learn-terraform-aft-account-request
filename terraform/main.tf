module "stage" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "konfig-stg@tabnergc.com"
    AccountName               = "stage-aft"
    ManagedOrganizationalUnit = "aft-tabner"
    SSOUserEmail              = "tohid.mulani@tabnerglobal.com"
    SSOUserFirstName          = "Tohid"
    SSOUserLastName           = "Mulani"
  }

  account_tags = {
    "Environment" = "stage"
  }

  change_management_parameters = {
    change_requested_by = "Tohid Mulani"
    change_reason       = "Create AWS account for stage environment"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "stage-aft"
}
