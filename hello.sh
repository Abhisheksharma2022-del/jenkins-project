#!/bin/bash

echo "Welcome to the Jenkins Hello 😄"

echo "User : $(whoami)"
echo "Hostname : $(hostname)"
echo "Current Directory : $(pwd)"
echo "Date : $(date)"

sudo apt update
sudo apt install -y tree
