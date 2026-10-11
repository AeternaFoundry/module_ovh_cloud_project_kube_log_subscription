resource "ovh_cloud_project_kube_log_subscription" "cloud_project_kube_log_subscriptions" {
  for_each = var.cloud_project_kube_log_subscriptions

  kind         = each.value.kind
  kube_id      = each.value.kube_id
  service_name = each.value.service_name
  stream_id    = each.value.stream_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

