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
                sh 'git clone -b test_docker https://github.com/TestGitUser0/flask_setup.git'
           }
        }
        stage("Build"){
            steps {
                dir('flask_setup') {
                    sh 'ansible-playbook -i inventory playbook.yml'
                }
            }
        }
    }
}
