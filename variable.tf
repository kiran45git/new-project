variable "vpc_cidr_dev" {
  description = "CIDR block for the dev VPC"
}

variable "vpc_cidr_stage" {
  description = "CIDR block for the stage VPC"
}

variable "vpc_cidr_prod" {
  description = "CIDR block for the prod VPC"
}

variable "subnet_cidr_dev" {
  description = "CIDR block for the dev subnet"
}

variable "subnet_cidr_stage" {
  description = "CIDR block for the stage subnet"
}

variable "subnet_cidr_prod" {
  description = "CIDR block for the prod subnet"
}


#you define the variables used in your Terraform configuration for specifying CIDR blocks for VPCs and subnets in different environments.
  # Adjust the descriptions and default values of the variables according to your requirements.


variable "instance_type" {
  description = "The type of EC2 instance to launch"
 
}

variable "ami_id_dev" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance in the dev environment"
}

variable "ami_id_stage" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance in the stage environment"
}

variable "ami_id_prod" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance in the prod environment"
}
