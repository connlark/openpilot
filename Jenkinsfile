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
            sh '''env;pwd;
            
            '''
          }
        }

        stage('rubygemstuff') {
          when {
            branch 'master'
          }
          steps {
            sh '''
            sh ./__SCRIPTS__/build_master-ci.sh

            '''
          }
        }
      }
    } 
  }
  environment {
    LANG = 'en_US.UTF-8'
  }
}