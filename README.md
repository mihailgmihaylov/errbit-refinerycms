# errbit-refinerycms

#Requirements

#Initial Setup

- First make sure you have Vagrant Guest Additions 
vagrant plugin install vagrant-vbguest

- Then install vagrant-env
vagrant plugin install vagrant-env

- Add a vagrant box
vagrant box add centos7.1 https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box

- Edit the .env file with the proper environment variables for your env
