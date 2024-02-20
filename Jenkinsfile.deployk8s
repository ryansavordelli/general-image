pipeline { 
    agent any

    environment {
        HOST_POD = 'test-pod'
    }


    stages {
        stage('Get Source') {
            steps {
                git url: 'https://github.com/ryansavordelli/pedelogo-catalogo.git', branch: 'main'
            }
        }

        stage('Authentic cluster') {
            steps {
                sh 'cp k8s/config.yaml ~/.kube/config'
            }
        }

        stage('Deploy nginx') {
            steps {
                sh "sed -i 's/HOST_POD/'${HOST_POD}'/g' k8s/deploy.yaml"
                sh 'kubectl apply -f k8s/deploy.yaml'
            }
        }
    }
}