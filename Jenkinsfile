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

        stage('plan') {
            steps {
                sh "terraform plan"
            }
        }

        // Add your other stages here
    }
}
