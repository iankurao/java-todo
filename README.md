# Java-Week3-To Do List

To build a Docker image for a Java application, you need to create a Dockerfile that specifies the steps to set up the environment, copy your application code, and run your application. Here's a general step-by-step guide:

Create a Dockerfile: This file will contain the instructions for building your Docker image.

Choose a base image: For Java applications, you typically start with an official Java runtime image.

Copy your application code: Include your Java application files (e.g., JAR or WAR files) in the image.

Set the working directory: Define the working directory in the container.

Specify the command to run your application: Indicate how to run your Java application when the container starts.


**Steps to Build and Run the Docker Image**:

Build the Docker image: Navigate to the directory containing your Dockerfile and run the following command: 

## $docker build -t my-java-app .

This command will create a Docker image named my-java-app.

Run the Docker container: Once the image is built, you can run it with the following command:

## $docker run -p 8080:8080 my-java-app

This command maps port 8080 on your host machine to port 8080 in the container, allowing you to access your application via http://localhost:8080.

