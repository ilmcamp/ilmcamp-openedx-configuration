#!/bin/bash
#------------------------------------------------------------------------------
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com
#
# date:       sep-2024
#
# usage: deploy open edx instance. 
#   - authenticates to AWS Elastica Container Registray using AWS IAM key-pair
#   - pulls latest docker image from AWS ECR
#   - ensure baseline prod configuration settings
#   - launches tutor instance
#   - applies custom theme
#------------------------------------------------------------------------------

AWS_REGION=ap-south-1
AWS_ACCOUNT_ID=194722410770
OPENEDX_THEME_REPO=ilmcamp-openedx-theme

# authenticate to AWS ECR and pull latest image to local Docker cache
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com
docker pull $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/ilmcamp/openedx-v18-prod:latest

# ensure baseline prod configuration settings
tutor config save --set LANGUAGE_CODE="uz"

# remove tutor's default interactive prompts
tutor local launch --non-interactive --pullimages

# apply custom theme
tutor local do settheme $OPENEDX_THEME_REPO
