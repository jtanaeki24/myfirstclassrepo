pipeline {
    agent any

   // tools {
        // Install the Maven version configured as "M3" and add it to the path.
       // maven "M3" is a tricky tool
   // }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/Geopell-Cloud/myfirstclassrepo.git'

                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean package"

                // To run Maven on a Windows agent, use
                // bat "mvnw.cmd -Dmaven.test.failure.ignore=true clean package"
            }
	}
            stage('Test') {
		    steps {
                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean package"

                // To run Maven on a Windows agent, use
                // bat "mvnw.cmd test"
            }
       }
	    stage('Deploy') {
		    steps {
                // Run Maven on a Unix agent.
                sh "java -jar ./target/springboot-first-app-0.0.1-SNAPSHOT.jar"

                // To run Maven on a Windows agent, use
                // bat "mvnw.cmd test"
            }
       }
    }	       
          post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
                }
            }
	}
