pipeline {
    agent { node { label '164_labels' } }
    stages {
        stage('build') {
            when { branch 'main' }
                steps {
		    
		    sh 'mvn clean'
		    sh 'mvn install' 
		    sh 'sudo /root/script/edocs.sh stop'
		    sh 'sudo /root/script/edocs.sh start'
                }
        }
    }
}
