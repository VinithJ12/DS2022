#!/usr/bin/python3


import requests

import boto3


url= 'https://commondatastorage.googleapis.com/codeskulptor-assets/space%20station.png'

file_name= 'pic.png'

response=requests.get(url)

s3 = boto3.client('s3', region_name="us-east-1")

bucket = 'ds2022-uhe5bj'

object_name= file_name

expires_in = 604800

s3.upload_file(file_name, bucket, object_name)

presigned_url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': object_name},
    ExpiresIn=expires_in
)

print(f"Presigned URL: {presigned_url}")
