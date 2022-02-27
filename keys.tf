resource "digitalocean_ssh_key" "terraform" {
  name       = "Terraform Key"
  public_key = var.ssh_rsa_pubkey
}
