resource "aws_cloudwatch_metric_alarm" "myalarm" {
  alarm_name                = "dameo-alarm"
  comparison_operator       = "LessThanOrEqualToThreshold"
  evaluation_periods        = 2
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = 30
  statistic                 = "Average" 
  threshold                 = 10
  alarm_description         = "This metric monitors ec2 cpu utilization"
  insufficient_data_actions = []
  dimensions = {
    InstanceId = aws_instance.linux.id
  }

  alarm_actions = ["arn:aws:automate:us-east-1:ec2:stop"]
}