#!/bin/bash
export SM_WORKSHOP_SRC=$SM_WORKSHOP_HOME/src

# print environment variables
echo "SM_WORKSHOP_SRC=$SM_WORKSHOP_SRC"

# execute
echo "delete-sm-workshop-component=$1 in region=$2 and profile=$3"
aws cloudformation delete-stack --stack-name sm-workshop-$1 \
--region $2 \
--profile $3
