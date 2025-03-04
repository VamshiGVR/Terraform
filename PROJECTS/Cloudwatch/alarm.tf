resource "aws_cloudwatch_metric_alarm" "AL" {
    alarm_name = "Alarm"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods = 2
    metric_name = "CPU"
    namespace = "AWS/EC2"
    period = 120
    statistic = "Average"
    threshold = 10
    alarm_description = ""
    insufficient_data_actions = []
    dimensions = {
        InstanceId = aws_instance.EC2.id
    }
    alarm_actions = ["arn:aws:automate:us-east-1:ec2:stop"]
  
}