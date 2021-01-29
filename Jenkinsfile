pipeline {
    agent none
    stages {
        stage('env') {
            agent { label "agent1" }
            steps {
                echo '=== printenv ==='
                sh 'printenv'
            }
        }
        stage('Test Application') {
            steps {
                //
                echo '=== Testing Application ==='
            }
            post {
                always {
       //             junit 'target/surefire-reports/*.xml'
                    echo "=============do something ========="
                }
            }
        }
        stage('Build') {
            input 'Do you approve deployment?'
            agent { label "agent1" }
            steps {
              echo '=== check git sha ==='
              script {
                  echo "GIT_COMMIT_HASH: ${GIT_COMMIT}"
              }
            }
        }
    }
}