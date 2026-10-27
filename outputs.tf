output "serviceendpoint_azurecrs_id" {
  description = "Map of id values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.id }
}
output "serviceendpoint_azurecrs_app_object_id" {
  description = "Map of app_object_id values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.app_object_id }
}
output "serviceendpoint_azurecrs_authorization" {
  description = "Map of authorization values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.authorization }
}
output "serviceendpoint_azurecrs_az_spn_role_assignment_id" {
  description = "Map of az_spn_role_assignment_id values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.az_spn_role_assignment_id }
}
output "serviceendpoint_azurecrs_az_spn_role_permissions" {
  description = "Map of az_spn_role_permissions values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.az_spn_role_permissions }
}
output "serviceendpoint_azurecrs_azurecr_name" {
  description = "Map of azurecr_name values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.azurecr_name }
}
output "serviceendpoint_azurecrs_azurecr_spn_tenantid" {
  description = "Map of azurecr_spn_tenantid values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.azurecr_spn_tenantid }
}
output "serviceendpoint_azurecrs_azurecr_subscription_id" {
  description = "Map of azurecr_subscription_id values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.azurecr_subscription_id }
}
output "serviceendpoint_azurecrs_azurecr_subscription_name" {
  description = "Map of azurecr_subscription_name values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.azurecr_subscription_name }
}
output "serviceendpoint_azurecrs_credentials" {
  description = "Map of credentials values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => one(v.credentials) }
}
output "serviceendpoint_azurecrs_description" {
  description = "Map of description values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.description }
}
output "serviceendpoint_azurecrs_project_id" {
  description = "Map of project_id values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.project_id }
}
output "serviceendpoint_azurecrs_resource_group" {
  description = "Map of resource_group values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.resource_group }
}
output "serviceendpoint_azurecrs_service_endpoint_authentication_scheme" {
  description = "Map of service_endpoint_authentication_scheme values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.service_endpoint_authentication_scheme }
}
output "serviceendpoint_azurecrs_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.service_endpoint_name }
}
output "serviceendpoint_azurecrs_service_principal_id" {
  description = "Map of service_principal_id values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.service_principal_id }
}
output "serviceendpoint_azurecrs_spn_object_id" {
  description = "Map of spn_object_id values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.spn_object_id }
}
output "serviceendpoint_azurecrs_workload_identity_federation_issuer" {
  description = "Map of workload_identity_federation_issuer values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.workload_identity_federation_issuer }
}
output "serviceendpoint_azurecrs_workload_identity_federation_subject" {
  description = "Map of workload_identity_federation_subject values across all serviceendpoint_azurecrs, keyed the same as var.serviceendpoint_azurecrs"
  value       = { for k, v in azuredevops_serviceendpoint_azurecr.serviceendpoint_azurecrs : k => v.workload_identity_federation_subject }
}

