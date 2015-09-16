FROM jeremymarshall/teradata-client-perl
  RUN yum -y install java-1.7.0-openjdk git && yum clean all

  ADD swarm-client-2.0-jar-with-dependencies.jar swarm-client-2.0-jar-with-dependencies.jar

  ENTRYPOINT ["java", "-jar", "swarm-client-2.0-jar-with-dependencies.jar", "-labels", "teradata-client", "-labels", "perl"]

  #add add a dsn into the image
  #RUN bin/td-odbc-add --dsn=<dsn> --DBCName=<ip|host>  --Username=<user> --Password=<pwd> 

