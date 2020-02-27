#!/bin/bash

echo "Start docker container ^_^..."

cd /opt/sourceCodes/src/main/java/hello

pwd

echo "Compile source code..."
javac Helloworld.java 

echo "Run java application..."
java Helloworld

echo "test log..." >> /opt/sourceCodes/srcjava.log