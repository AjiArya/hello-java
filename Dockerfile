FROM openjdk:8
RUN mkdir /usr/src/app
COPY HelloWorld.java /usr/src/app
WORKDIR /usr/src/app
RUN javac HelloWorld.java
CMD java HelloWorld
