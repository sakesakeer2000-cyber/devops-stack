pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Images') {
            steps {
                sh 'sudo docker compose build'
            }
        }

        stage('Deploy Containers') {
            steps {
                sh 'sudo docker compose up -d'
            }
        }

        stage('Verify Deployment') {
            steps {
                sh 'sudo docker compose ps'
            }
        }
    }
}
