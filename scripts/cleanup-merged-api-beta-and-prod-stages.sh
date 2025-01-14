#!/bin/bash
set -xe

AWS_REGION='us-east-1'
AWS_PROFILE='cloudservicesdev'
aws cloudformation delete-stack --region $AWS_REGION --profile $AWS_PROFILE --stack-name "beta-BookReviewsMergedApiStack"

aws cloudformation delete-stack --region $AWS_REGION --profile $AWS_PROFILE --stack-name "prod-BookReviewsMergedApiStack"
