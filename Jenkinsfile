pipeline {
    agent any

    stages {
        stage('Test SSH') {
            steps {
                sshagent(credentials: ['ec2-ssh']) {
                    sh '''
                        ssh -v -o StrictHostKeyChecking=no ubuntu@172.17.0.1 "echo SUCCESS"
                    '''
                }
            }
        }
    }
}
