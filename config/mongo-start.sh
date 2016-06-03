#!/bin/bash
PWD="/home/vagrant/errbit" 
export MONGO_URL="mongodb://mongoadmin:Q1w2e3r4t5y6@localhost:27017/admin"
cd $PWD
sudo nohup bundle exec rails server &
sleep 10
#END
