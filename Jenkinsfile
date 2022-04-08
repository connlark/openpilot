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
                AN_ACCESS_KEY = credentials('gitea-jenkins-ssh') 
            }
          when {
            branch 'master'
          }
          steps {
            sh '''
            export GIT_SSH_COMMAND=\'ssh -i \$AN_ACCESS_KEY -o IdentitiesOnly=yes\'; 
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