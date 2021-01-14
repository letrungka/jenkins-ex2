node ("agent1") {
    stage('Checkout') {
        checkout scm
    }
    stage('Environment') {
      sh 'git --version'
      sh 'docker -v'
    }
    stage('Build Docker test'){
     sh 'docker build -t react-ex2:v1 -f Dockerfile --no-cache .'
     sh 'docker tag react-ex2:v1 react-ex2:latest'
    }
}
// wget https://download.docker.com/linux/static/stable/x86_64/docker-19.03.0.tgz