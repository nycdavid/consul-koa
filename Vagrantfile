Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provision "shell", path: "scripts/setup.sh"

  config.vm.synced_folder "./etc/consul.d", "/etc/consul.d"
end
