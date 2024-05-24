# VPC Resource for Dev
resource "aws_vpc" "myvpc_dev" {
  cidr_block = var.vpc_cidr_dev
  provider   = aws.aliasdevvv  # Use the AWS provider configured for dev environment
}

# VPC Resource for Stage
resource "aws_vpc" "myvpc_stage" {
  cidr_block = var.vpc_cidr_stage
  provider   = aws.aliasstage
}

# VPC Resource for Prod
resource "aws_vpc" "myvpc_prod" {
  cidr_block = var.vpc_cidr_prod
  provider   = aws.aliasprod
}

# Subnet Resource for Dev
resource "aws_subnet" "subnet_dev" {
  vpc_id     = aws_vpc.myvpc_dev.id
  cidr_block = var.subnet_cidr_dev
  provider   = aws.aliasdevvv  # Use the AWS provider configured for dev environment
}

# Subnet Resource for Stage
resource "aws_subnet" "subnet_stage" {
  vpc_id     = aws_vpc.myvpc_stage.id
  cidr_block = var.subnet_cidr_stage
  provider   = aws.aliasstage
}

# Subnet Resource for Prod
resource "aws_subnet" "subnet_prod" {
  vpc_id     = aws_vpc.myvpc_prod.id
  cidr_block = var.subnet_cidr_prod
  provider   = aws.aliasprod
}


# EC2 Instance Resource for Dev
resource "aws_instance" "my_instance_dev" {
  ami           = var.ami_id_dev
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet_dev.id  # Assuming you have already created a subnet in the dev environment
  provider      = aws.aliasdevvv                    # Use the AWS provider configured for the dev environment

  # Provisioning steps for Dev environment
}

# EC2 Instance Resource for Stage
resource "aws_instance" "my_instance_stage" {
  ami           = var.ami_id_stage
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet_stage.id  # Assuming you have already created a subnet in the stage environment
  provider      = aws.aliasstage                    # Use the AWS provider configured for the stage environment

  # Provisioning steps for Stage environment
}

# EC2 Instance Resource for Prod
resource "aws_instance" "my_instance_prod" {
  ami           = var.ami_id_prod
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet_prod.id  # Assuming you have already created a subnet in the prod environment
  provider      = aws.aliasprod                    # Use the AWS provider configured for the prod environment

  # Provisioning steps for Prod environment
}
