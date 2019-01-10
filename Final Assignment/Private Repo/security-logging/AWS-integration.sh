#/bin/bash
export AWS_CONFIG_FILE="/root/.aws/config" #change it as per user
export AWS_ACCESS_KEY_ID=AKIAJKA2NRHRVMNEZZIQ
export AWS_SECRET_ACCESS_KEY=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
/root/bin/aws s3 cp /var/log/syslog s3://e91-cloudtrail/AWSLogs/531997612114/CloudTrail/GCP/ --acl=public-read --debug
echo "*/5 * * * * /bin/bash /root/logging.sh >> /tmp/sync-s3.log" > /etc/cron.d/logging 
