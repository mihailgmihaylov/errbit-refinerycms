#!/bin/bash
PWD="/home/vagrant/my_new_application" 
cd $PWD
bundle exec rails server &
sleep 10
