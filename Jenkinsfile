pipeline {
    agent { label 'agent1' }
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello stage 1 - step 1!' 
            }
            steps {
                echo 'Hello stage 1 -step 2 !' 
            }
            steps {
                echo 'Hello stage 1 - step 3!' 
            }
        }
        stage('Stage 2') {
            steps {
                echo 'Hello stage 2!' 
            }
        } 
    }
}