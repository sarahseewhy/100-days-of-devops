resource "aws_cloudwatch_metric_alarm" "cpu_utilization" {
  alarm_name = "high_cpu_utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = "2"
  metric_name = "CPUUtilization"
  namespace = "AWS/EC2"
  period = "120"
  statistic = "Average"
  threshold = "70"
  alarm_description = "This metric monitors ec2 cpu utilization"
  insufficient_data_actions = []

  dimensions = {
    InstanceId = aws_instance.day_1.id
  }

  tags = {
    env     = "spike"
    service = "100-days-devops"
    name    = "hello-world"
  }
}