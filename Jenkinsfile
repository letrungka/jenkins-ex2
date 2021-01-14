pipeline {
  agent {label "agent1"}
  stages {
    // stage('Checkout') {
    //   steps {
    //     checkout scm
    //     }
    // }
    stage('Environment') {
      steps {
        sh 'printenv'
      }
    }
    stage('Build Docker test'){
      steps {
          script {
              if ("${GIT_BRANCH}" == 'origin/master') {
                  echo "${GIT_BRANCH}"
                  echo 'I only execute on the master branch'
                  sh 'docker build -t react-ex2:v1 -f Dockerfile --no-cache .'
                  sh 'docker tag react-ex2:v1 react-ex2:latest'
              } else {
                  echo "${GIT_BRANCH}"
                  echo 'I execute elsewhere'
              }
          }
      }
    }
  }
}
// wget https://download.docker.com/linux/static/stable/x86_64/docker-19.03.0.tgz