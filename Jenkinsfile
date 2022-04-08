pipeline {
  agent none
  stages {


  stage('host'){
    agent { label 'built-in' }
      stages {

        stage('grab git tags') {
            environment { 
                AN_ACCESS_KEY = credentials('openpilot-ssh-key') 
            }
            steps {
                sh '''
                
                export GIT_SSH_COMMAND=\'ssh -i \$AN_ACCESS_KEY -o IdentitiesOnly=yes\'; 
                git submodule update --init;


                
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
                export GIT_SSH_COMMAND=\'ssh -i \$AN_ACCESS_KEY -o IdentitiesOnly=yes\';; 

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