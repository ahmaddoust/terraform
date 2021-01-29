#!/bin/bash -e
su - ec2-user -c "echo 'nvm use 12.18.1' >> /home/ec2-user/.bashrc"
su - ec2-user -c "source /home/ec2-user/.bashrc"
su - ec2-user -c "nvm use 12.18.1"
su - ec2-user -c "/home/ec2-user/.nvm/versions/node/v12.18.1/bin/forever start  /home/ec2-user/test-server/server.js"

