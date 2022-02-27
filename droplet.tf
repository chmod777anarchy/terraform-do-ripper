resource "digitalocean_droplet" "dripp-0" {
  image  = "ubuntu-20-04-x64"
  name   = "dripp-0"
  region = var.do_region
  size   = var.droplet_size
  ssh_keys = [
    digitalocean_ssh_key.terraform.id
  ]

  connection {
    host     = self.ipv4_address
    user     = "root"
    type     = "ssh"
    private_key = file(var.ssh_prikey_path)
    timeout = "4m"
  }

  provisioner "file" {
    source      = "startup.sh"
    destination = "/opt/startup.sh"
  }

  provisioner "file" {
    source      = "startup.service"
    destination = "/etc/systemd/system/startup.service"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /opt/startup.sh",
      "systemctl start startup.service"
    ]
  }

}
