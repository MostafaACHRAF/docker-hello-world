To run this java hello world application in a docker container, do the following instructions :
1- clone the repository
2- cd in the root folder of the project
3- docker build -t java-app .
Now we have built a new docker image called 'java-app'
4- To run a container from this image run :
docker run -it --rm --name javaHello java-app
Great ^_^  We have created a container named javaHello from java-app image
Our simple java application will just display a hello world message
But what if we want to change the message ? Simple ! we have to rebuild the image, then restart the container
This solution, may work for small projects. But in real world big application, this may take too much time :(
Here comes the beauty of volumes. By mounting the source code in a volume inside docker container, If we want to change the source code, we just need to restart the container
5- here is how to do it :
docker run -it --rm --name javaHello -v /home/hybris/Documents/dockerTraining/javaApp/sourceCode:/opt/sourceCodes java-app
docker run -it --rm --name javaHello -v /home/hybris/Documents/dockerTraining/javaApp/sourceCode:/opt/sourceCodes java-app
Your locale source code (/home/hybris/Documents/dockerTraining/javaApp/sourceCode) is loaded in /opt/sourceCodes in the container fileSystem
Happy docker...
