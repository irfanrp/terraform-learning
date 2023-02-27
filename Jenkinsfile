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
            withAWS(credentials: 'aws'){
                sh "aws --version"  
                sh "aws sts get-caller-identity"
                sh "aws s3 ls"
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
