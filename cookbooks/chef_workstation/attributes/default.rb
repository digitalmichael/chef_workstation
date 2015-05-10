default["chef_workstation"]["chef_user"] = ENV['USER']
default["chef_workstation"]["user"] = 'vagrant'
default["chef_workstation"]["group"] = 'vagrant'
default['chef_workstation']['chefdk_version'] = '0.5.1-1'
default['chef_workstation']['vagrant_version'] = '1.7.2'
default['chef_workstation']['docker_version'] = '1.6.0'
default['chef_workstation']['chef_server']['user'] = "\#{ENV['USERNAME'] || ENV['USER']}"
default['chef_workstation']['chef_server']['url'] = "https://api.opscode.com/organizations/"
default['chef_workstation']['chef_server']['packages'] = [
  'apt-transport-https',
  'apparmor',
  'build-essential',
  'git',
  'iptables-persistent',
  'iputils-ping',
  'linux-headers-generic-lts-trusty',
  'linux-image-generic-lts-trusty',
  "lxc-docker-#{node["chef_workstation"]["docker_version"]}",
  'nano',
  'squid3'
]