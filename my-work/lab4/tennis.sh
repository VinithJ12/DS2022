#!/bin/bash



#first step is to get the image using curl

curl https://live.staticflickr.com/1519/23999532461_364490a0d4_b.jpg > consult.jpg

# Now we want to upload the file into your s3 bucket

aws s3 cp consult.jpg s3://ds2022-uhe5bj/

# Presigns a URL

aws s3 presign --expires-in 604800 s3://ds2022-uhe5bj/consult.jpg




