resource "oci_iot_iot_flow_runtime" "iot_iot_flow_runtimes" {
  for_each = var.iot_iot_flow_runtimes

  compartment_id = each.value.compartment_id
  iot_domain_id  = each.value.iot_domain_id
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags
  scale          = each.value.scale

  dynamic "log_config" {
    for_each = each.value.log_config != null ? [each.value.log_config] : []
    content {
      log_group_id = log_config.value.log_group_id
      log_id       = log_config.value.log_id
    }
  }

  dynamic "network_config" {
    for_each = each.value.network_config != null ? [each.value.network_config] : []
    content {
      dynamic "file_storage_mounts" {
        for_each = network_config.value.file_storage_mounts != null ? network_config.value.file_storage_mounts : []
        content {
          export_id       = file_storage_mounts.value.export_id
          mount_path      = file_storage_mounts.value.mount_path
          mount_target_id = file_storage_mounts.value.mount_target_id
        }
      }
      network_security_group_ids = network_config.value.network_security_group_ids
      subnet_id                  = network_config.value.subnet_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

