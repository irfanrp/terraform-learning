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
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                    sh 'aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID'
                    sh 'aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY'
                    sh 'aws configure set default.region us-east-1' // Set your desired region
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
