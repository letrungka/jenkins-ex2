pipeline {
    agent none
    environment {
        BRANCH_NAME = sh ''' echo "${GIT_BRANCH}" | grep -o -P "[^\\/]+$"
                        '''
        // 
    }
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
            agent { label "agent1" }
            input { message "Do you want to continute for deploying the infrastructure ?"}
            steps {
              echo '=== check git sha ==='
              script {
                  echo "GIT_COMMIT_HASH: ${GIT_COMMIT}"
              }
            }
        }
    }
}