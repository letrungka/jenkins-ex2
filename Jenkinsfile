pipeline {
    agent { label 'agent1' }
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello stage 1 - step to print env !' 
                sh 'printenv'
            }
        }
        stage('Stage 2') {
            agent { dockerfile true }
            steps {
                sh 'node --version'
                sh 'ls -ltr'
            }
        } 
    }
}