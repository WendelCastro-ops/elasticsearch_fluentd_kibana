consul {
  address = "consul:8500"

  retry {
    enabled  = true
    attempts = 12
    backoff  = "250ms"
  }
}
template {
  source      = "/consul/fluentd.conf.ctmpl"
  destination = "/consul/fluentd.conf"
  perms       = 0600
}
