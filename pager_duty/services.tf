resource "pagerduty_service" "datadog" {
  name                    = "Datadog"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 1800
  escalation_policy       = "${pagerduty_escalation_policy.main.id}"
}
