#!/bin/bash
PWD="/home/vagrant/errbit" 
export MONGO_URL="mongodb://mongodb:Q1w2e3r4t5y6@localhost:27019/admin"
cd $PWD
bundle exec rails server -b 0.0.0.0 &
