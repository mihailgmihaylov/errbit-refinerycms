# errbit-refinerycms

Hello,
This is a proof of concept project which aims to install Errbit and RefineryCMS and link them together so that Errbit recieves Refinery's errors.
Note that as this projects is a PoC it does not aim to be a reusable one so you may find hardcoded parameters inside the files. If it is used for a real life use, you should parameterize it as convinient.

#Requirements

The deployment uses the following tools in order to build Errbit and RefineryCMS automatically:

Vagrant
Puppet
Ansible
VirtualBox

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

vagrant box add centos7 https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box

# Start the provisioning with Vagrant

Before running vagrant, make sure you change the environment variables in the .env file which should be present alongside the Vagrantfile.
To start the provisioning of the two machines with vagrant, go to the directory you placed the Vagrantfile and execute the following command:

vagrant up --provider=virtualbox

What this command does is that it creates two virtualbox machines and executes the puppet files in manifests directory.
At the end you will have two virtual machines that are redy for Errbit and RefnieryCMS deployments.

# Provision the software with Ansible

ansible-playbook --private-key=.vagrant/machines/errbit/virtualbox/private_key -u vagrant -i ./config/vagrant.py errbit.yml
!NOTE: After the playbook has finished its work successfully, look for the password for user errbit@errbit.example.com in the output of the command. Without it, you will not be able to login.


ansible-playbook --private-key=.vagrant/machines/refinerycms/virtualbox/private_key -u vagrant -i ./config/vagrant.py refinerycms.yml 

ansible-playbook -i ./config/vagrant.py configure-errbit-refinerycms.yml

# Testing

Once everything is done, you can test by issueing the following command on the refinerycms machine:
rake airbrake:test

This should procude an error which will be tracked in Errbit in the Errors tab.

# Starting services
If a machine has been restarted you can start each application using these scripts:

/home/vagrant/errbit/errbit-start.sh

/home/vagrant/my_new_application/refinerycms-start.sh
