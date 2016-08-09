Vagrant.configure("2") do |config|

  config.vm.provision "puppet"

  config.vm.define "head" do |head|
    head.vm.box = ENV['CENTOS6_BOX']
    head.vm.network "private_network", ip:"192.168.2.100"
    head.vm.hostname = "head"
#    head.vm.provision "shell", path:"head.sh"
  end

  (1..4).each do |i|
    config.vm.define "node#{i}" do |config|
      config.vm.box = ENV['CENTOS6_BOX']
      config.vm.hostname = "node#{i}"
      config.vm.network "private_network", ip:"192.168.2.#{i+100}"
      config.vm.provision "shell", inline: "chmod 600 /home/vagrant/.ssh/authorized_keys"
      config.vm.provider :virtualbox do |vb|
        vb.customize "post-boot",["controlvm", :id, "setlinkstate1", "on"]
	vb.memory = 512
        vb.linked_clone = true
    end
  end
end
