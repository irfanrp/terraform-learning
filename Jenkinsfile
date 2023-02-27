pipeline {
    agent { 
        node {
            label 'docker-agent'
        }
    } 

    stages {
        stage('Install and configure AWS CLI') {
            // environment {
            //     PATH = "$HOME/.local/bin:$PATH"
            // }
            steps {
                // Install AWS CLI
                // sh 'curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"'
                // sh 'unzip awscliv2.zip'
                // sh './aws/install --update'
                // sh 'aws --version'

                // Configure AWS CLI
                withAWS(credentials: 'aws-credentials') {
                            sh "aws --version"  
                            sh "aws sts get-caller-identity"


                            
                    }
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
