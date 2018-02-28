Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"

  # Server/UI
  config.vm.define "consul-server-1" do |server|
    server.vm.provision "shell", {
      path: "provision/consul_server.sh",
      env: { CONFIG_FILE: "config.ui.hcl" }
    }

    # Synced Folders
    server.vm.synced_folder "./tmp.consul.server", "/tmp/consul.server"

    # Networking
    server.vm.network "private_network", ip: "192.168.99.100"
    server.vm.hostname = "consul-server-1"
  end

  # Server Definitions
  2.upto(3) do |n|
    config.vm.define "consul-server-#{n}" do |server|
      # Provisioning
      server.vm.provision "shell", {
        path: "provision/consul_server.sh",
        env: { CONFIG_FILE: "config.hcl" }
      }

      # Synced Folders
      server.vm.synced_folder "./tmp.consul.server", "/tmp/consul.server"

      # Networking
      server.vm.network "private_network", ip: "192.168.99.10#{n}"
      server.vm.hostname = "consul-server-#{n}"
    end
  end

  config.vm.define "web-server" do |server|
    # Provisioning
    server.vm.provision "shell", {
      path: "provision/web_server.sh"
    }

    # Synced Folders
    server.vm.synced_folder "./tmp.web.server", "/tmp/web.server"
    server.vm.synced_folder "./app", "/tmp/app"

    # Networking
    server.vm.network "private_network", type: "dhcp"
    server.vm.hostname = "web-server-1"
  end
end
