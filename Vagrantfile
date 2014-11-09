VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu"

  config.vm.network :public_network
  config.vm.hostname = "vdocker"

  config.vm.provision "docker" do |d|
#    d.opts "--dns 8.8.8.8"
#    d.build_image "/vagrant", args: "-t sumkincpp/mesos"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

end
