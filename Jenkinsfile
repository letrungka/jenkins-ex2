pipeline {
    agent { label 'agent1' }
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello stage 1 - steps !' 
                echo "env is: '${env}'"
            }
        }
        stage('Stage 2') {
            steps {
                echo 'Hello stage 2!' 
            }
        } 
    }
}