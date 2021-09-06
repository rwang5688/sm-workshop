#!/bin/bash
export SM_WORKSHOP_SRC=$SM_WORKSHOP_HOME/src

# print environment variables
echo "SM_WORKSHOP_SRC=$SM_WORKSHOP_SRC"

# execute
echo "validate-sm-workshop-component=$1"
aws cloudformation validate-template \
--template-body file://$SM_WORKSHOP_SRC/sm-workshop-$1.yaml
