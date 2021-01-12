node {
    stage('Checkout') {
      checkout scm
    }
    stage('Environment') {
      sh 'git --version'
      sh 'docker -v'
      sh 'printenv'
    }
    stage('Build Docker test'){
     sh 'docker build -t react-ex2 -f Dockerfile --no-cache .'
    }
}