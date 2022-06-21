pipeline {
    agent { node { label '164_labels' } }
    stages {
        stage('build') {
            when { branch 'main' }
                steps {
		    
		    sh 'mvn clean'
		    sh 'mvn install' 
		    sh 'rm -rf /home/edocs.travel/public_html/*'
                    sh 'cp -rf /home/jenkins/workspace/EDOCS_TRAVEL/* /home/edocs.travel/public_html/'
		    sh 'nohup java -jar /home/jenkins/workspace/EDOCS_TRAVEL/target/edocs-0.0.1-SNAPSHOT.jar'
		    
                }
        }
    }
}
