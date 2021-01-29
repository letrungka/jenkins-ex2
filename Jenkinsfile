pipeline {
    agent { label "agent1" }
    environment {
        SOME_THING = "defined"
                        
        // 
    }
    stages {
        stage('env') {
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
            input { message "Do you want to continute for deploying the infrastructure ?"}
            steps {
              echo '=== check git sha ==='
              script {
                  echo "GIT_COMMIT_HASH: ${GIT_COMMIT}"
                  BRANCH_NAME = echo ${GIT_BRANCH} | grep -o -E "[^\\/]+$"
                  echo "BRANCH: ${BRANCH_NAME}"
              }
            }
        }
    }
}