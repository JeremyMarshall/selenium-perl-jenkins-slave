# docker-jenkins-slave-teradata

This repo is to build a Docker Jenkins Slave with a Teradata client

Its not quite as simple as that, you will also need to:-

* Download 

<http://downloads.teradata.com/download/connectivity/odbc-driver/linux>

* Create another Docker image from this one with a Dockerfile like this

```
FROM jeremymarshall/docker-jenkins-slave-teradata

  #add in DSNs for your Teradata servers
  RUN bin/td-odbc-add --dsn=<dsn> --DBCName=<ip|host>  --Username=<user> --Password=<pwd>

```

Supported parameters for td-odbc-add are:
* dsn
* Database
* Password
* Username
* DBCName
* Description
* DefaultDatabase

* Copy the downloaded tar.gz file above directly into the folder with the Dockerfile

* Build yourself your own container

```
docker build -t my-own-container \
    --force-rm=true --no-cache=true .
```


* Use the Jenkins swarm plugin as per [https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin]

* Run your new container with 
```
 docker run -i -t test my-own-container -master jenkins-url 
```

Use any parameters for the jenkins swarm client directly



