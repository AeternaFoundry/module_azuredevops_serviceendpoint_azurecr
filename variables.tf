variable "serviceendpoint_azurecrs" {
  description = <<EOT
Map of serviceendpoint_azurecrs, attributes below
Required:
    - azurecr_name
    - azurecr_spn_tenantid
    - azurecr_subscription_id
    - azurecr_subscription_name
    - project_id
    - service_endpoint_name
Optional:
    - description
    - resource_group
    - service_endpoint_authentication_scheme
    - credentials (block):
        - serviceprincipalid (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    azurecr_name                           = string
    azurecr_spn_tenantid                   = string
    azurecr_subscription_id                = string
    azurecr_subscription_name              = string
    project_id                             = string
    service_endpoint_name                  = string
    description                            = optional(string)
    resource_group                         = optional(string)
    service_endpoint_authentication_scheme = optional(string)
    credentials = optional(object({
      serviceprincipalid = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_azurecrs : (
        v.service_endpoint_authentication_scheme == null || (contains(["WorkloadIdentityFederation", "ManagedServiceIdentity", "ServicePrincipal"], v.service_endpoint_authentication_scheme))
      )
    ])
    error_message = "must be one of: \"WorkloadIdentityFederation\", \"ManagedServiceIdentity\", \"ServicePrincipal\""
  }
}

