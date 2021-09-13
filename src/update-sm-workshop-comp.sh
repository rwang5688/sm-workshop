#!/bin/bash
export SM_WORKSHOP_SRC=$SM_WORKSHOP_HOME/src

# print environment variables
echo "SM_WORKSHOP_SRC=$SM_WORKSHOP_SRC"

# execute
echo "update-sm-workshop-component=$1 in region=$2, profile=$3, project=$4"
aws cloudformation update-stack --stack-name sm-workshop-$1 \
--template-body file://$SM_WORKSHOP_SRC/sm-workshop-$1.yaml \
--capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND \
--parameters file://sm-workshop-$1-parameters.json \
--region $2 \
--profile $3 \
--tags Key="Project",Value="$4"
