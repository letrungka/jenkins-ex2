node ("agent1") {
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
// wget https://download.docker.com/linux/static/stable/x86_64/docker-19.03.0.tgz