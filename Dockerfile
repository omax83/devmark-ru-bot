FROM centos:7 as base
EXPOSE 80
ENV TOKEN="361092334:AAG7oDgPotJiSrcmYTrzjgazl9Ni-ufkczE"
ENV SERVER_PORT="80"
WORKDIR /tmp
COPY . .
RUN yum -y update
RUN yum -y install wget vim
RUN wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm
RUN yum -y install /tmp/jdk-17_linux-x64_bin.rpm
CMD ["java", "-jar", "devmark-ru-bot-1.0.0.jar"]
