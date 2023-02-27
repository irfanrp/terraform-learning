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
            withCredentials([[$class: 'AmazonWebServicesCredentialsBinding',credentialsId: 'aws',accessKeyVariable: 'AWS_ACCESS_KEY_ID',secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
            ]]) {
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
