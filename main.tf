resource "aws_cloudwatch_metric_alarm" "alarm_on_sns_failed_notifications" {
  count = module.this.enabled ? 1 : 0

  alarm_name        = replace("${var.sns_topic_name}_failed_notifications", "-", "_")
  alarm_description = "An alarm that goes off when SNS ${var.sns_topic_name} topic fails to deliver messages."
  namespace         = "AWS/SNS"
  metric_name       = "NumberOfNotificationsFailed"

  dimensions = {
    TopicName = var.sns_topic_name
  }

  comparison_operator = "GreaterThanThreshold"
  threshold           = var.alarm_on_sns_failed_notifications_threshold

  period             = var.alarm_on_sns_failed_notifications_period
  evaluation_periods = var.alarm_on_sns_failed_notifications_evaluation_periods

  datapoints_to_alarm = var.alarm_on_sns_failed_notifications_datapoints_to_alarm
  statistic           = var.alarm_on_sns_failed_notifications_statistic
  unit                = "Count"
  treat_missing_data  = var.alarm_on_sns_failed_notifications_treat_missing_data

  alarm_actions             = [var.sns_topic_alarms_arn]
  ok_actions                = [var.sns_topic_alarms_arn]
  insufficient_data_actions = [var.sns_topic_alarms_arn]
}
