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
            steps {
              echo '=== check git sha ==='
              script {
                  echo "GIT_COMMIT_HASH: ${GIT_COMMIT}"
                  sh '''
                    BRANCH_NAME=`echo ${GIT_BRANCH} | grep -o -E "[^\\/]+$"`
                    echo "BRANCH: ${BRANCH_NAME}" > result.txt
                  '''
              }
            }
        }
        stage('Push Artifact'){
            input { message "Do you want to continute for uploading to S3 ?"}
            steps{
                echo "Pushing Artifact ..."
                withAWS(region:'eu-east-1',credentials:'awss3upload') {
                    // do something
                    S3Upload(file:'result.txt', bucket:'terraform-ex1', path:'artifacts/${GIT_COMMIT}_result.txt')
                }
            }
        }
    }
}