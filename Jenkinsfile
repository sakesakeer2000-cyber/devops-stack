pipeline {
    agent any

    stages {
        stage('Deploy Docker Stack') {
            steps {
                sshagent(credentials: ['ec2-ssh']) {
                    sh '''
                    ssh -o StrictHostKeyChecking=no ubuntu@172.17.0.1 << 'EOF'
                    cd /home/ubuntu/devops-stack
                    docker compose build
                    docker compose up -d
                    docker compose ps
                    EOF
                    '''
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment Successful!'
        }
        failure {
            echo 'Deployment Failed!'
        }
    }
}
