variable "cloud_project_kube_log_subscriptions" {
  description = <<EOT
Map of cloud_project_kube_log_subscriptions, attributes below
Required:
    - kind
    - kube_id
    - service_name
    - stream_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    kind         = string
    kube_id      = string
    service_name = string
    stream_id    = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

