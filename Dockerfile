FROM hub.c.163.com/xbingo/jdk8
RUN pwd
RUN apt-get update
ENV M2_HOME ./maven
RUN ./maven/bin/mvn clean
RUN ./maven/bin/mvn package
ADD ./target/dao-springboot-0.1.jar  /dao-springboot.jar
EXPOSE 8080
CMD ["java","-jar","/dao-springboot.jar"]