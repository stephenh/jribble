
VERSION_NUMBER = ENV['version'] || 'SNAPSHOT'

repositories.remote << "http://repo1.maven.org/maven2"
repositories.release_to = 'sftp://joist.ws/var/www/joist.repo'
repositories.release_to[:permissions] = 0644

define "jribble" do
  project.version = VERSION_NUMBER
  project.group = 'com.google'
  compile.with 'com.google.protobuf:protobuf-java:jar:2.4.1'
  package
  package_with_sources
end

