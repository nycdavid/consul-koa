Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"

  # Server Definitions
  1.upto(3) do |n|
    config.vm.define "consul-server-#{n}" do |server|
      server.vm.provision "shell", {
        path: "scripts/setup_consul_server.sh",
        env: { NODE_NAME: "consul-server-#{n}" }
      }

      server.vm.synced_folder "./tmp.consul-server", "/tmp/consul/config"
      server.vm.synced_folder "./scripts", "/tmp/scripts/"
      server.vm.network "private_network", type: "dhcp"
      server.vm.hostname = "consul-server-#{n}"
    end
  end
end
