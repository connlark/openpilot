pipeline {
  agent none
  stages {


  stage('host'){
    agent { label 'built-in' }
      stages {

        stage('grab git tags') {
          when {
            branch 'master'
          }
          steps {
            sh '''env;
            
            '''
          }
        }

        stage('rubygemstuff') {
          when {
            branch 'master'
          }
          steps {
            sh '''
            pwd

            '''
          }
        }
    }
    
    
    
  }
  environment {
    LANG = 'en_US.UTF-8'
  }
}