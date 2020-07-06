provider "aws" {
  region = var.region
}

module "sns" {
  source = "git::https://github.com/cloudposse/terraform-aws-sns-topic.git?ref=0.1.0"

  name      = var.name
  namespace = var.namespace
  stage     = var.stage
}

module "sns-alarms" {
  source = "../../"

  sns_topic_name       = module.sns.sns_topic.name
  sns_topic_alarms_arn = module.sns.sns_topic.arn
}
