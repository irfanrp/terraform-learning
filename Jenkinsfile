pipeline {
    agent { 
        node {
            label 'docker-agent'
        }
    } 

    stages {
        stage('Install and configure AWS CLI') {
            environment {
                PATH = "$HOME/.local/bin:$PATH"
            }
            steps {
                // Install AWS CLI
                sh 'curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"'
                sh 'unzip awscliv2.zip'
                sh './aws/install --update'
                sh 'aws --version'

                // Configure AWS CLI
                withAWS(region: 'us-east-2', credentials: 'aws-credentials') {
                    sh "aws configure set aws_access_key_id '${AWS_ACCESS_KEY_ID}'"
                    sh "aws configure set aws_secret_access_key '${AWS_SECRET_ACCESS_KEY}'"
                    sh 'aws sts get-caller-identity'
                }
            }
        }

        stage('terraform init') {
            steps {
                sh "terraform init"
            }
        }

        // Add your other stages here
    }
}
