#!/bin/bash

curl https://miro.medium.com/v2/resize:fit:1400/1*1PhjsPrD69GadqQx067IBg.jpeg > vs_code.jpg

aws s3 cp vs_code.jpg s3://ds2022-uhe5bj/

https://s3.amazonaws.com/ds2022-uhe5bj/vs_code.jpg

aws s3 presign --expires-in 604800 s3://ds2022-uhe5bj/vs_code.jpg


#Presigned URL for SUBMISSION
https://ds2022-uhe5bj.s3.amazonaws.com/vs_code.jpg?AWSAccessKeyId=AKIAWPPO55YR5QPW52GG&Signature=AccLEq8o4GCHWmJMOzV2ZNRpD3U%3D&Expires=1728237594


