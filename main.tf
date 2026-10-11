resource "google_compute_disk_async_replication" "compute_disk_async_replications" {
  for_each = var.compute_disk_async_replications

  primary_disk    = each.value.primary_disk
  deletion_policy = each.value.deletion_policy

  secondary_disk {
    disk = each.value.secondary_disk.disk
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

