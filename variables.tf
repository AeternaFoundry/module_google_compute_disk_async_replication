variable "compute_disk_async_replications" {
  description = <<EOT
Map of compute_disk_async_replications, attributes below
Required:
    - primary_disk
    - secondary_disk (block):
        - disk (required)
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    primary_disk    = string
    deletion_policy = optional(string)
    secondary_disk = object({
      disk = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

