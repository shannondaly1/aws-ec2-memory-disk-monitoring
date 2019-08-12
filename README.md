## AWS - Monitoring Memory and Disk Metrics for Amazon EC2 Linux Instances

Script used to automatically set up the PERL script necessary for monitoring memory and 
disk metrics in Amazon EC2 instances. This can be included in CloudFormation templates 
(typically in the UserData section). Ensure your IAM user has the following permissions for it to run:

cloudwatch:PutMetricData

cloudwatch:GetMetricStatistics

cloudwatch:ListMetrics

ec2:DescribeTags


