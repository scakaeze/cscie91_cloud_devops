import boto3
import json

ec2 = boto3.resource('ec2')

def lambda_handler(event, context):
    # create filter if needed
    filters = [{ 'Name': 'instance-state-name', 'Values': [''] }]
    
    instances = ec2.instances.filter(Filters=filters)

    InstanceList = []

    for instance in instances:
        InstanceList.append(instance.id)

    return {
        'statusCode': 200,
        'body': json.dumps(InstanceList),
        "headers": {
           'Content-Type': 'text/plain', 
           #'Content-Type': 'application/json', 
           'Access-Control-Allow-Origin': '*' 
        }
    }

