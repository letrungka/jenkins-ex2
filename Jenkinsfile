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
              echo '=== check git sha ==='
              script {
                  GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
                  echo "GIT_COMMIT_HASH: ${GIT_COMMIT_HASH}"
              }
            }
        }
    }
}