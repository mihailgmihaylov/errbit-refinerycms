#!/bin/bash
PWD="/home/vagrant/refinerycms" 
cd $PWD
rails new my_new_application -m http://refinerycms.com/t/edge

cd my_new_application
sudo nohup bundle exec rails server &
sleep 10
#END
