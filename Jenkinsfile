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
            steps {
                echo 'Hello stage 2! - print branch: ' 
                echo "${GIT_BRANCH}"
            }
        } 
    }
}