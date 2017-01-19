variable "pagerduty_token" {}

provider "pagerduty" {
  token = "${var.pagerduty_token}"
}
