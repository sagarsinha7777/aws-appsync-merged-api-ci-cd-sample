#!/bin/bash
set -xe

AWS_REGION='us-east-1'
AWS_PROFILE='cloudservicesdev'
aws cloudformation delete-stack --region $AWS_REGION --profile $AWS_PROFILE --stack-name "beta-BooksServiceStack"
aws cloudformation delete-stack --region $AWS_REGION --profile $AWS_PROFILE --stack-name "beta-AuthorsServiceStack"
aws cloudformation delete-stack --region $AWS_REGION --profile $AWS_PROFILE --stack-name "beta-ReviewsServiceStack"


aws cloudformation delete-stack --region $AWS_REGION --profile $AWS_PROFILE --stack-name "prod-BooksServiceStack"
aws cloudformation delete-stack --region $AWS_REGION --profile $AWS_PROFILE --stack-name "prod-AuthorsServiceStack"
aws cloudformation delete-stack --region $AWS_REGION --profile $AWS_PROFILE --stack-name "prod-ReviewsServiceStack"
