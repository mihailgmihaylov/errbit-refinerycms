# errbit-refinerycms

#Requirements

#Initial Setup

* First make sure you have Vagrant Guest Additions and the following plugins
vagrant plugin install vagrant-vbguest

vagrant plugin install vagrant-env

vagrant plugin install vagrant-hosts

vagrant plugin install vagrant-puppet-install

vagrant plugin install vagrant-libvirt

vagrant plugin install vagrant-vbguest

vagrant plugin install vagrant-hostsupdater


* Add a vagrant box
vagrant box add centos7.1 https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box

or

vagrant box add centos7 https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box


# Provision the software with Ansible

ansible-playbook --private-key=.vagrant/machines/errbit/virtualbox/private_key -u vagrant -i ./config/vagrant.py errbit.yml

ansible-playbook --private-key=.vagrant/machines/refinerycms/virtualbox/private_key -u vagrant -i ./config/vagrant.py refinerycms.yml 

* Edit the .env file with the proper environment variables for your env
