resource "azuredevops_serviceendpoint_azurecr" "serviceendpoint_azurecrs" {
  for_each = var.serviceendpoint_azurecrs

  azurecr_name                           = each.value.azurecr_name
  azurecr_spn_tenantid                   = each.value.azurecr_spn_tenantid
  azurecr_subscription_id                = each.value.azurecr_subscription_id
  azurecr_subscription_name              = each.value.azurecr_subscription_name
  project_id                             = each.value.project_id
  service_endpoint_name                  = each.value.service_endpoint_name
  description                            = each.value.description
  resource_group                         = each.value.resource_group
  service_endpoint_authentication_scheme = each.value.service_endpoint_authentication_scheme

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      serviceprincipalid = credentials.value.serviceprincipalid
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

