provider "aws" {
  region = var.region
}

resource "aws_iam_user" "personal_user" {
  name = "DJM-Playground-User"
}

resource "aws_iam_user_policy_attachment" "personal_user_attach" {
  user       = aws_iam_user.personal_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
resource "aws_sns_topic" "billing_alerts" {
  name = "billing-alerts"
}

resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.billing_alerts.arn
  protocol  = "email"
  endpoint  = var.alert_email
}

resource "aws_cloudwatch_metric_alarm" "billing_alarm" {
  alarm_name          = "billing-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = "21600"  # 6 hours
  statistic           = "Maximum"
  threshold           = var.monthly_billing_threshold  
  alarm_description   = "This alarm monitors AWS estimated charges."
  actions_enabled     = true
  alarm_actions       = [aws_sns_topic.billing_alerts.arn]
  dimensions = {
    Currency = "USD"
  }
}