#!/bin/bash
echo "create-sm-workshop-vpc in region=$1 and profile=$2"
aws cloudformation create-stack --stack-name sm-workshop-vpc \
--template-body file://sm-workshop-vpc.yaml \
--capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND \
--parameters file://sm-workshop-vpc-parameters.json \
--region $1 \
--profile $2
