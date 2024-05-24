# Configure the AWS Provider for Dev
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}



# Configure the AWS Provider for Dev
provider "aws" {
  alias   = "aliasdevvv"
  region  = "us-east-1"  # Specify the region for dev environment, maya infrastructure ya region mdh bnvshil
  profile = "dev"        # Use the AWS profile named "dev"
}

# Configure the AWS Provider for Stage
provider "aws" {
  alias  = "aliasstage"
  region = "us-east-2"  # Specify the region for stage environment     maya infrastructure ya region mdh bnvshil
  profile = "stage"        # Use the AWS profile named "dev"
}

# Configure the AWS Provider for Prod
provider "aws" {
  alias  = "aliasprod"
  region = "ap-south-1"  # Specify the region for prod environment    maya infrastructure ya region mdh bnvshil
  profile = "prod"        # Use the AWS profile named "dev"
}


# resource "aws_vpc" "myvpc_stage" {  ##########  1. create vpc but my provider is this one    provider   = aws.aliasstage   ,alias name aliasstage  , then it will come to provider.tf
#   cidr_block = var.vpc_cidr_stage
#   provider   = aws.aliasstage
# }

# provider "aws" {   ############## 2.here  it give alias name as aliasstage, for this provider alias name is aliasstage , it will take this name and it will take that profile  profile = "stage"     
#   alias  = "aliasstage"
#   region = "ap-south-1"  # Specify the region for stage environment     maya infrastructure ya region mdh bnvshil
#   profile = "stage"        # Use the AWS profile named "stage"
# }

#############3. where this credentials in work in anather stage account in iam user , it will authneticate this account and this vpc will created here 
