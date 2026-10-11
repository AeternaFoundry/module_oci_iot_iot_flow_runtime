output "iot_iot_flow_runtimes_id" {
  description = "Map of id values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no id are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_iot_flow_runtimes_compartment_id" {
  description = "Map of compartment_id values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no compartment_id are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "iot_iot_flow_runtimes_defined_tags" {
  description = "Map of defined_tags values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no defined_tags are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "iot_iot_flow_runtimes_description" {
  description = "Map of description values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no description are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "iot_iot_flow_runtimes_display_name" {
  description = "Map of display_name values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no display_name are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iot_iot_flow_runtimes_flow_runtime_host" {
  description = "Map of flow_runtime_host values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no flow_runtime_host are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.flow_runtime_host if v.flow_runtime_host != null && length(v.flow_runtime_host) > 0 }
}
output "iot_iot_flow_runtimes_freeform_tags" {
  description = "Map of freeform_tags values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "iot_iot_flow_runtimes_iot_domain_id" {
  description = "Map of iot_domain_id values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no iot_domain_id are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.iot_domain_id if v.iot_domain_id != null && length(v.iot_domain_id) > 0 }
}
output "iot_iot_flow_runtimes_log_config" {
  description = "Map of log_config values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no log_config are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => one(v.log_config) if v.log_config != null && length(v.log_config) > 0 }
}
output "iot_iot_flow_runtimes_network_config" {
  description = "Map of network_config values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no network_config are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => one(v.network_config) if v.network_config != null && length(v.network_config) > 0 }
}
output "iot_iot_flow_runtimes_scale" {
  description = "Map of scale values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no scale are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.scale if v.scale != null && length(v.scale) > 0 }
}
output "iot_iot_flow_runtimes_state" {
  description = "Map of state values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no state are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.state if v.state != null && length(v.state) > 0 }
}
output "iot_iot_flow_runtimes_system_tags" {
  description = "Map of system_tags values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no system_tags are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "iot_iot_flow_runtimes_time_created" {
  description = "Map of time_created values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no time_created are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "iot_iot_flow_runtimes_time_updated" {
  description = "Map of time_updated values across all iot_iot_flow_runtimes, keyed the same as var.iot_iot_flow_runtimes except keys with no time_updated are omitted"
  value       = { for k, v in oci_iot_iot_flow_runtime.iot_iot_flow_runtimes : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

