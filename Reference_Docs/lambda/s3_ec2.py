import json
import boto3

def lambda_handler(event, context):
    buckets = listS3()
    bname = buckets['Buckets'][1]['Name']
    print(buckets)
    print (listS3acl(bname))
    return

def listS3acl(bname):
    s3 = boto3.client('s3')
    return (s3.get_bucket_acl(Bucket=bname))

def listS3():
    s3 = boto3.client('s3')
    buckets= s3.list_buckets()
    bname = buckets['Buckets'][1]['Name']
    return buckets

def listEC2s():
    ec2 = boto3.client('ec2')
    response = ec2.describe_instances()
    for reservation in response["Reservations"]:
        for instance in reservation["Instances"]:
            print(instance)
            print(instance["InstanceId"])
    return 



