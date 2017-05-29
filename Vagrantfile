Vagrant.configure(2) do |config|
  config.env.enable # enable the plugin
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  # config.vm.box = "centos7.1"

  config.vm.define "errbit" do |errbit|
    errbit.vm.box =  ENV['BOX_NAME']
    #comment the next line if vagrant is not installed on Windows OS and you are not using cygwin
    #ENV["VAGRANT_DETECTED_OS"] = ENV["VAGRANT_DETECTED_OS"].to_s + " cygwin"
    errbit.vm.hostname = ENV['ERRBIT_HOSTNAME']
    errbit.vm.network :private_network, ip: ENV['ERRBIT_IP']
    errbit.vm.provider ENV['PROVIDER'] do |vbe|
      vbe.cpus = ENV['ERRBIT_CPU']
      vbe.memory = ENV['ERRBIT_MEM']
      vbe.name = ENV['ERRBIT_NAME']
    end
    errbit.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
      puppet.manifests_path = "manifests"
      puppet.manifest_file = "errbit-init.pp"
    end

    errbit.vm.provision "puppet" do |mongodb|
      #mongodb.options = "--verbose --debug"
      mongodb.manifests_path = "manifests"
      mongodb.module_path = "modules"
      mongodb.manifest_file = "mongodb.pp"
    end
  end

  config.vm.define "refinerycms" do |refinerycms|
    refinerycms.vm.box = ENV['BOX_NAME']
    #comment the next line if vagrant is not installed on Windows OS and you are not using cygwin
    #ENV["VAGRANT_DETECTED_OS"] = ENV["VAGRANT_DETECTED_OS"].to_s + " cygwin"
    refinerycms.vm.hostname = ENV['REFINERYCMS_HOSTNAME']
    refinerycms.vm.network :private_network, ip: ENV['REFINERYCMS_IP']
      refinerycms.vm.provider ENV['PROVIDER'] do |vbr|
      # Display the VirtualBox GUI when booting the machine
      #   vbr.gui = true
      # Customize the amount of memory on the VM:
      vbr.cpus = ENV['REFINERYCMS_CPU']
      vbr.memory = ENV['REFINERYCMS_MEM']
      vbr.name = ENV['REFINERYCMS_NAME']
    end
    refinerycms.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
      puppet.manifests_path = "manifests"
      puppet.manifest_file = "refinerycms-init.pp"
    end
  end
end
