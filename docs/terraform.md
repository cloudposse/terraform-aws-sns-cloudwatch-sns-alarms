## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alarm\_on\_sns\_failed\_notifications\_datapoints\_to\_alarm | The number of datapoints in CloudWatch Metric statistic, which triggers the alarm. | `number` | `1` | no |
| alarm\_on\_sns\_failed\_notifications\_evaluation\_periods | The number of periods over which data is compared to the specified threshold. | `number` | `1` | no |
| alarm\_on\_sns\_failed\_notifications\_period | The period, in seconds, over which to measure. | `number` | `300` | no |
| alarm\_on\_sns\_failed\_notifications\_statistic | The statistic to apply to the alarm's associated metric. [SampleCount, Average, Sum, Minimum, Maximum] | `string` | `"Sum"` | no |
| alarm\_on\_sns\_failed\_notifications\_threshold | Threshold for failed notifications on SNS topic. By default it will trigger on any failure. | `number` | `0` | no |
| alarm\_on\_sns\_failed\_notifications\_treat\_missing\_data | Sets how this alarm is to handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching. | `string` | `"notBreaching"` | no |
| enabled | Indicates whether this module is enabled | `bool` | n/a | yes |
| name | Name to distinguish alarms for this SNS topic | `string` | n/a | yes |
| sns\_topic\_alarms\_arn | ARN of SNS topic that will be subscribed to an alarm. | `string` | n/a | yes |
| sns\_topic\_name | Name of SNS topic to be monitored. | `string` | n/a | yes |

## Outputs

No output.

