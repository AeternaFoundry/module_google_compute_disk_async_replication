output "compute_disk_async_replications_id" {
  description = "Map of id values across all compute_disk_async_replications, keyed the same as var.compute_disk_async_replications except keys with no id are omitted"
  value       = { for k, v in google_compute_disk_async_replication.compute_disk_async_replications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_disk_async_replications_deletion_policy" {
  description = "Map of deletion_policy values across all compute_disk_async_replications, keyed the same as var.compute_disk_async_replications except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_disk_async_replication.compute_disk_async_replications : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_disk_async_replications_primary_disk" {
  description = "Map of primary_disk values across all compute_disk_async_replications, keyed the same as var.compute_disk_async_replications except keys with no primary_disk are omitted"
  value       = { for k, v in google_compute_disk_async_replication.compute_disk_async_replications : k => v.primary_disk if v.primary_disk != null && length(v.primary_disk) > 0 }
}
output "compute_disk_async_replications_secondary_disk" {
  description = "Map of secondary_disk values across all compute_disk_async_replications, keyed the same as var.compute_disk_async_replications except keys with no secondary_disk are omitted"
  value       = { for k, v in google_compute_disk_async_replication.compute_disk_async_replications : k => one(v.secondary_disk) if v.secondary_disk != null && length(v.secondary_disk) > 0 }
}

