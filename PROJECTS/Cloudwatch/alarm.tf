resource "aws_cloudwatch_metric_alarm" "AL" {
    alarm_name = "Alarm" #NAME of Alarms
    comparison_operator = "GreaterThanOrEqualToThreshold" #Condition
    evaluation_periods = 2 #no of times occurs in period
    period = 60 #Calculated in Seconds.
    metric_name = "CPU" #Name
    namespace = "AWS/EC2"
    statistic = "Average"
    threshold = 10
    alarm_description = ""
    insufficient_data_actions = []
    dimensions = {
        InstanceId = aws_instance.EC2.id
    }
    alarm_actions = ["arn:aws:automate:us-east-1:ec2:stop"]
  
}