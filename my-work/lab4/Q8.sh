#!/bin/bash


curl https://commondatastorage.googleapis.com/codeskulptor-assets/lathrop/debris3_brown.png > rocks.png


aws s3 cp rocks.png s3://ds2022-uhe5bj/

aws s3 ls s3://ds2022-uhe5bj/

aws s3 presign --expires-in 604800 s3://ds2022-uhe5bj/rocks.png

