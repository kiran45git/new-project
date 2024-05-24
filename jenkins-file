pipeline {
    agent any
    
    environment {
        TF_VAR_vpc_cidr_dev = "10.0.0.0/16"
        TF_VAR_vpc_cidr_stage = "10.1.0.0/16"
        TF_VAR_vpc_cidr_prod = "10.2.0.0/16"
        TF_VAR_subnet_cidr_dev = "10.0.1.0/24"
        TF_VAR_subnet_cidr_stage = "10.1.1.0/24"
        TF_VAR_subnet_cidr_prod = "10.2.1.0/24"
        TF_VAR_instance_type = "t2.micro"
        TF_VAR_ami_id_dev = "ami-0bb84b8ffd87024d8"
        TF_VAR_ami_id_stage = "ami-02bf8ce06a8ed6092"
        TF_VAR_ami_id_prod = "ami-0cc9838aa7ab1dce7"
    }
    
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/kiran45git/new-project.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var-file=variables.tfvars -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
