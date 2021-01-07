provider "aws" {
  region = var.region
}

module "sns" {
  source  = "cloudposse/sns-topic/aws"
  version = "0.11.0"

  context = module.this.context
}

module "sns-alarms" {
  source = "../../"

  sns_topic_name       = module.sns.sns_topic.name
  sns_topic_alarms_arn = module.sns.sns_topic.arn

  context = module.this.context
}
