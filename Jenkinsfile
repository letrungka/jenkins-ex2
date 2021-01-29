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
            timeout(time: 1, unit: 'MINUTES') {
                input{
                    message "Do you want to continute for deploying the infrastructure ?"
                }
            }
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