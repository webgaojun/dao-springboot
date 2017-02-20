FROM hub.c.163.com/xbingo/jdk8
RUN apt-get install maven
ENV M2_HOME /usr/share/maven
RUN mvn clean
RUN mvn package
ADD ./target/dao-springboot-0.1.jar  /dao-springboot.jar
EXPOSE 8080
CMD ["java","-jar","/dao-springboot.jar"]