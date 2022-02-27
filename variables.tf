variable "do_token" {
  description = "Enter your token on Digital Ocean"
}

variable "droplet_size" {
  description = "Enter size of the droplet"
  default     = "s-1vcpu-1gb"
}

variable "do_region" {
  description = "Enter Digital Ocean's region"
}

variable "ssh_rsa_pubkey" {
  description = "Insert contents of your ssh public key"
}

variable "ssh_prikey_path" {
  description = "Tell terraform absolute path to ssh private key to use for command execution in droplet"
}
