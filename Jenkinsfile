pipeline {
    agent { node { label '164_labels' } }
    stages {
        stage('build') {
            when { branch 'main' }
                steps {
		
		    sh 'mvn clean'
		    sh 'mvn install' 
		    sh '/home/edocs.travel/script/stop.sh stop'
		    sh 'rm -rf /home/edocs.travel/public_html/*'
                    sh 'cp -rf /home/jenkins/workspace/EDOCS_TRAVEL_NEW_main/* /home/edocs.travel/public_html/'
		    sh 'JENKINS_NODE_COOKIE=dontKillMe nohup java -jar /home/jenkins/workspace/EDOCS_TRAVEL_NEW_main/target/edocs-0.0.1-SNAPSHOT.jar >> nohup.out 2> nohup.err < /dev/null &'
		   
			
			
                }
        }
    }
}
