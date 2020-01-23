pipeline {
  agent any
  stages {
    stage('Unpack Toolbox') {
      steps {
        sh 'unzip ${MBDTOOLBOX_ZIP}'
        sh 'mv fsroot MBDToolbox_MPC57xx'
      }
    }

  }
}