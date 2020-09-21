pipeline{

  agent { label 'CENO-DOCKER-MASTER' }

  stages{
      stage('checkout'){
            steps{
        git branch: 'test-from-master', url: 'https://github.com/svkvc1980/project.git'
    }
}
      stage('Build') {
            steps {
            sh 'echo "Builing the Maven Java application"'
            sh 'mvn clean compile package'
            sh 'sudo rm -rf /home/centos/project-war-file-location/app.war'
	    sh 'cp -i -p /home/centos/jenkindockernode/workspace/TEST-PIPELINE-BUILD-DOCKER-K8-PROD-8080/target/*.war /home/centos/project-war-file-location/app.war'
            }
            }
  }

}

/*
pipeline{
  
  agent { label 'LIN-ANSIBEL-MASTER-172-31-33-11' }

  stages{
      stage('checkout'){
            steps{
        git branch: 'PROD-TOMCAT-8080', url: 'https://github.com/svkvc1980/tomcat-ansible.git'
    }
}
      stage('Build') {
            steps {
            sh 'echo "Executing ansible command"'
            sh 'ansible-playbook -i hosts tomcat-setup.yml'
            }
            }
  }

}

*/
/* This is pretty basic
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Executing ansible command"'
                //sh 'cd /home/centos/tomcat-8080/tomcat-ansible/'
		//sh 'ansible-playbook -i hosts tomcat-nodes tomcat-setup.yml'
		    sh 'ansible-playbook -i hosts tomcat-setup.yml -vvv' 
            }
        }
    }
}
*/
