pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Deploy Docker Stack') {
            steps {
                sh '''
                    cd /home/ubuntu/devops-stack
                    docker compose build
                    docker compose up -d
                    docker compose ps
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment completed successfully!'
        }

        failure {
            echo 'Deployment failed. Check the console output.'
        }
    }
}
