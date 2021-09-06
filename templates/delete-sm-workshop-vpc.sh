#!/bin/bash
echo "delete-sm-workshop-vpc in region=$1 and profile=$2"
aws cloudformation delete-stack --stack-name sm-workshop-vpc \
--region $1 \
--profile $2
