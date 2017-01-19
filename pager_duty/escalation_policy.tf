resource "pagerduty_escalation_policy" "main" {
  name      = "Main"
  num_loops = 1

  rule {
    escalation_delay_in_minutes = 15

    target {
      id = "${pagerduty_user.kaveh.id}"
    }
  }
}
