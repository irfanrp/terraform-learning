pipeline {
    agent { 
        node {
            label 'docker-agent'
        }
    } 

    stages {
        stage('Install and configure AWS CLI') {
            steps {
                // Configure AWS CLI
                withAWS(region: 'us-east-1', credentials: 'aws'){
                    sh "aws --version"  
                    sh "aws sts get-caller-identity"
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
