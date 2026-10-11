variable "iot_iot_flow_runtimes" {
  description = <<EOT
Map of iot_iot_flow_runtimes, attributes below
Required:
    - compartment_id
    - iot_domain_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - scale
    - log_config (block):
        - log_group_id (required)
        - log_id (optional)
    - network_config (block):
        - file_storage_mounts (optional, block):
            - export_id (required)
            - mount_path (required)
            - mount_target_id (required)
        - network_security_group_ids (optional)
        - subnet_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    iot_domain_id  = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    scale          = optional(string)
    log_config = optional(object({
      log_group_id = string
      log_id       = optional(string)
    }))
    network_config = optional(object({
      file_storage_mounts = optional(list(object({
        export_id       = string
        mount_path      = string
        mount_target_id = string
      })))
      network_security_group_ids = optional(set(string))
      subnet_id                  = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

