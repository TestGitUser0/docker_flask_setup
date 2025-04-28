pipeline{
    agent{
        label "master"
    }
    stages {
        stage("Clean Up"){
            steps {
                deleteDir()
            }
        }
        stage("Clone Repo"){
            steps {
                sh 'rm -rf flask_setup'
                sh 'git clone https://github.com/TestGitUser0/docker_flask_setup.git'
           }
        }
        stage("Build"){
            steps {
                dir('docker_flask_setup') {
                    sh 'ansible-playbook -i inventory playbook.yml'
                }
            }
        }
    }
}
