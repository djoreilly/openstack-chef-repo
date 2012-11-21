name "production"
description "Defines the network and database settings you're going to use with OpenStack. The networks will be used in the libraries provided by the osops-utils cookbook. This example is for FlatDHCP with 2 physical networks."
# "precise" => "http://hypnotoad/precise-server-cloudimg-amd64.tar.gz"
override_attributes(
  "glance" => {
    "image_upload" => true,
    "images" => ["cirros","precise"],
    "image" => {
      "cirros" => "https://launchpad.net/cirros/trunk/0.3.0/+download/cirros-0.3.0-x86_64-disk.img",
      "precise"=> "https://cloud-images.ubuntu.com/precise/current/precise-server-cloudimg-amd64.tar.gz"
    }
  },
  "mysql" => {
    "allow_remote_root" => true,
    "root_network_acl" => "%"
  },
  "osops_networks" => {
    "public" => "10.0.111.0/24",
    "management" => "192.168.10.0/24",
    "nova" => "10.0.111.0/24"
  },
  "nova" => {
    "libvirt" => {
      "virt_type" => "qemu"
    },
    "network" => {
      "fixed_range" => "192.168.100.0/24",
      "public_interface" => "eth1"
    },
    "networks" => [
      {
        "label" => "public",
        "ipv4_cidr" => "192.168.100.0/24",
        "num_networks" => "1",
        "network_size" => "255",
        "bridge" => "br100",
        "bridge_dev" => "eth1",
        "dns1" => "8.8.8.8",
        "dns2" => "8.8.4.4"
      }
    ]
  }
  )
