# selenium-perl-jenkins-slave

This repo is to build a Docker Jenkins Slave perl conectivity to a Selenium grid

* Use the Jenkins swarm plugin as per [https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin]

You may need to --link to your selenium grid, if that is running in Docker too
You may need to --link to your jenkins, if that is running in Docker too

This is what I tend to use
```
docker run -i --link jenkins:jenkins --link selenium-hub:hub -t jeremymarshall/selenium-perl-jenkins-slave  -master http://jenkins:8080 -username XXXXXX -password XXXXXX
```

Use any parameters for the jenkins swarm client directly



