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
            environment { 
                AN_ACCESS_KEY = credentials('openpilot-ssh-key') 
            }
          when {
            branch 'master'
          }
          steps {
            sh '''
            ssh-add $AN_ACCESS_KEY;
            sh ./__SCRIPTS__/build_master-ci.sh;pwd;

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