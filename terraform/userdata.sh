#!/bin/bash
sudo yum install python3 -y
pip3 install fastapi uvicorn
sudo yum install git
git clone git@github.com:Kan0620/terraform-github-actions-learning.git app
python3 main.py