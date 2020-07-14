variable "enabled" {
  type        = bool
  description = "Indicates whether this module is enabled"
  default     = true
}

variable "sns_topic_name" {
  type        = string
  description = "Name of SNS topic to be monitored."
}

variable "sns_topic_alarms_arn" {
  type        = string
  description = "ARN of SNS topic that will be subscribed to an alarm."
}

variable "alarm_on_sns_failed_notifications_threshold" {
  type        = number
  description = "Threshold for failed notifications on SNS topic. By default it will trigger on any failure."
  default     = 0
}

variable "alarm_on_sns_failed_notifications_period" {
  description = "The period, in seconds, over which to measure."
  type        = number
  default     = 300
}

variable "alarm_on_sns_failed_notifications_evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold."
  type        = number
  default     = 1
}

variable "alarm_on_sns_failed_notifications_statistic" {
  description = "The statistic to apply to the alarm's associated metric. [SampleCount, Average, Sum, Minimum, Maximum]"
  type        = string
  default     = "Sum"
}

variable "alarm_on_sns_failed_notifications_datapoints_to_alarm" {
  description = "The number of datapoints in CloudWatch Metric statistic, which triggers the alarm."
  type        = number
  default     = 1
}

variable "alarm_on_sns_failed_notifications_treat_missing_data" {
  description = "Sets how this alarm is to handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching."
  type        = string
  default     = "notBreaching"
}
