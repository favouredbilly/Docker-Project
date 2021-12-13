# Using jdk as base image
FROM openjdk:8-jdk-alpine
# Copy the whole directory of activemq into the image
COPY apache-activemq-5.16.3 /opt/apache-activemq-5.16.3
# Set the working directory to the bin folder 
WORKDIR /opt/apache-activemq-5.16.3/bin
# Start up the activemq server
ENTRYPOINT ["./activemq","console"]
