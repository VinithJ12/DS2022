#!/usr/bin/python3




import boto3

curl https://codeskulptor-assets.commondatastorage.googleapis.com/assets_clock_background.png > clock.png 


s3 = boto3.client('s3', region_name='us-east-1')

bucket = 'ds2022-uhe5bj'

local_file = '/root/DS2022/my-work/lab4/clock.png'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file,
    ACL = 'public-read'
)

public_url = f"https://{bucket}.s3.amazonaws.com/{local_file}"

print(f"Public URL: {public_url}")



