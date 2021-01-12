pipeline {
    agent { label 'agent1' }
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello stage 1 - steps !' 
                echo "branch is: '${BRANCH_NAME}'"
                echo "changed 1"
            }
        }
        stage('Stage 2') {
            steps {
                echo 'Hello stage 2!' 
            }
        } 
    }
}