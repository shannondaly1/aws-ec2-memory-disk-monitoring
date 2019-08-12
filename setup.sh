yum install perl -y
yum install -y perl-Switch perl-DateTime perl-Sys-Syslog perl-LWP-Protocol-https perl-Digest-SHA.x86_64
yum install zip unzip -y
mkdir -p /opt/aws
curl -o /opt/aws/cw-mon-script.zip http://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.1.zip -O
cd /opt/aws/; unzip cw-mon-script.zip
crontab -l | { cat; echo "*/5 * * * * /opt/aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --disk-space-used --disk-space-util --disk-space-avail --disk-path=/ --from-cron"; } | crontab -

