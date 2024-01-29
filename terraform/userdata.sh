#!/bin/bash
sudo yum install python3 -y
pip3 install fastapi uvicorn
sudo yum install git -y
git clone https://gist.github.com/3564244597965cf4db54f41f511136ac.git
cd 3564244597965cf4db54f41f511136ac
python3 main.py