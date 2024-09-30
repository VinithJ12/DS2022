import urllib.request

import boto3

gif= "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Rotating_earth_%28large%29.gif/200px-Rotating_earth_%28large%29.gif"

local_file="earth_download.gif"

urllib.request.urlretrieve(gif, local_file)

s3=boto3.client('s3', region_name='us-east-1')

bucket_name = "ds2022-uhe5bj"
object_name = "uploads/earth_download.gif"



s3.put_object(
            Body=gif,
            Bucket=bucket_name,
            Key=gif,
            ACL='public-read'
)


expires_in = 604800

response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
    )
