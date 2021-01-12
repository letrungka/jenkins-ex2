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
           agent {
                docker {
                    image 'node:14-alpine' 
                    // label 'docker1'
                    // args  '-v /tmp:/tmp'                     
                    }
            }
            steps {
                echo 'Agent docker: ' 
                sh 'node --version'
            }
        } 
    }
}