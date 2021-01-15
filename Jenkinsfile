pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent { label "agent1" }
            steps {
                sh 'mvn --version'
            }
        }
        stage('Front-end') {
            agent { label "agent1" }
            steps {
                sh 'node --version'
            }
        }
    }
}