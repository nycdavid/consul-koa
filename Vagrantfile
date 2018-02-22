Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"

  # Server Definitions
  1.upto(3) do |n|
    config.vm.define "consul-server-#{n}" do |server|
      # Provisioning
      server.vm.provision "shell", {
        path: "provision/consul_server.sh",
        env: { NODE_NAME: "consul-server-#{n}" }
      }

      # Synced Folders
      server.vm.synced_folder "./tmp.consul.server", "/tmp/consul.server"

      # Networking
      server.vm.network "forwarded_port", guest: 8500, host: 8500 if n == 1
      server.vm.network "private_network", type: "dhcp"
      server.vm.hostname = "consul-server-#{n}"
    end
  end
end
