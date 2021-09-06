#!/bin/bash
echo "validate-sm-workshop-vpc"
aws cloudformation validate-template \
--template-body file://sm-workshop-vpc.yaml

