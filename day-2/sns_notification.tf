resource "aws_sns_topic" "hello_world_notification" {
  name      = "send_email_notification"

  tags = {
    env     = "spike"
    service = "100-days-devops"
    name    = "day-2"
  }
}