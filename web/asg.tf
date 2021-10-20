resource "aws_autoscaling_group" "bar" {
  name                      = "foobar3-terraform-test"
  max_size                  = var.asg_max
  min_size                  = var.asg_desird
  health_check_grace_period = 60
  health_check_type         = "ELB"
  desired_capacity          = var.asg_desird
  force_delete              = var.env == "dev" ? true : false
  launch_configuration      = aws_launch_configuration.web.name
  vpc_zone_identifier       = var.subnets

  tag {
    key                 = "Name"
    value               = replace(local.name, "rtype", "asg")
    propagate_at_launch = true
  }


  dynamic "tag" { #dynamic block use for loop, can replace "count" and "elemant function"
    for_each = local.tags
    iterator = tag
    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }
}

resource "aws_autoscaling_attachment" "web_attachment_bar" {
  autoscaling_group_name = aws_autoscaling_group.bar.id
  alb_target_group_arn   = aws_lb_target_group.main.arn
}

#resource "aws_autoscaling_policy" "bat" {
#  name                   = "foobar3-terraform-test"
#  scaling_adjustment     = 4
#  adjustment_type        = "ChangeInCapacity"
#  cooldown               = 300
#  autoscaling_group_name = aws_autoscaling_group.bar.name
#}
#
#resource "aws_cloudwatch_metric_alarm" "bat" {
#  alarm_name          = "terraform-test-foobar5"
#  comparison_operator = "GreaterThanOrEqualToThreshold"
#  evaluation_periods  = "2"
#  metric_name         = "CPUUtilization"
#  namespace           = "AWS/EC2"
#  period              = "120"
#  statistic           = "Average"
#  threshold           = "80"
#
#  dimensions = {
#    AutoScalingGroupName = aws_autoscaling_group.bar.name
#  }
#
#  alarm_description = "This metric monitors ec2 cpu utilization"
#  alarm_actions     = [aws_autoscaling_policy.bat.arn]
#}