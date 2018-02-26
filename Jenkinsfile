node {
  git url: 'https://github.com/sysco-middleware/monitoring-infra.git'
  def mvnHome = tool 'M3'
  sh "${mvnHome}/bin/mvn -B -Dmaven.test.failure.ignore verify"
  step([$class: 'JUnitResultArchiver', testResults:
'**/target/foobar/TEST-*.xml'])
}
