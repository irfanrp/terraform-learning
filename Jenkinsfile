pipeline {
    agent { 
        node {
            label 'docker-agent'
        }
    } 

    stages {
        stage('Install and configure AWS CLI') {
            steps {
                // Install AWS CLI
                sh 'curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"'
                sh 'unzip awscliv2.zip'
                sh 'mkdir -p $HOME/.local/bin'
                sh './aws/install --bin-dir $HOME/.local/bin --install-dir $HOME/.local/aws-cli'


                // Configure AWS CLI
                withAWS(region: 'us-east-2', credentials: 'aws-credentials') {
                    sh 'aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID'
                    sh 'aws consfigure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY'
                    sh 'aws sts get-caller-identity'
                }
                // withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                //     sh 'aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID'
                //     sh 'aws consfigure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY'
                //     sh 'aws configure set default.region us-east-1' // Set your desired region
                //     sh 'aws sts get-caller-identity'

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
