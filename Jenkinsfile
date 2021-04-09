node{

    checkout scm
    stage('Updating Image'){

		    docker.withRegistry('', 'dockerhub') {
		        def api_image = docker.build("yunusemrecatalcam/ci-cd-webapp:latest")
		        api_image.push()
		    }

    }

    /*stage ('Deploy') {

        sshagent(credentials : ['k8s']) {
            sh 'ssh root@95.217.210.139 -o StrictHostKeyChecking=no kubectl rollout restart deployment/webapp-deployment'
        }
}*/
}