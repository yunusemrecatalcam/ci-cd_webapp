node{

    checkout scm
    stage('Updating Image'){

		    docker.withRegistry('', 'dockerhub') {
		        def api_image = docker.build("vircon/scraper:latest")
		        api_image.push()
		    }

    }
}