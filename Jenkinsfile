pipeline {
    agent { 
        node {
            label 'docker-agent'
        }
    } 

    stages {
        stage('Install and configure AWS CLI') {
            steps {
                withAWS(credentials: 'aws'){
                    sh "aws --version"  
                }
            }
        }

        stage('terraform init') {
            steps {
                sh "terraform init" 
            }
        }

        stage('Terraform Lint') {
            steps {
                sh "tflint"
            }
        }

        stage('Terraform Plan') {
            steps {
                sh "terraform plan"
            }
        }

        stage('Terraform Apply') {
            input {
                message 'Are you sure you want to apply the Terraform changes?'
                ok 'Yes'
                submitter 'deployer'
            }
            steps {
                sh "terraform apply -auto-approve"
            }
        }

        // Add your other stages here
    }
}
