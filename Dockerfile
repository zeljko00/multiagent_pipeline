FROM jenkins/agent
USER root
RUN apt-get update && apt-get install -y maven
USER jenkins
