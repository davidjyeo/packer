build {
  name        = "ubuntu"
  description = <<EOF
This build creates ubuntu images for ubuntu versions :
* 16.04
* 21.10

VM Generation :
Gen 2

For the following builers :
* azure-arm
EOF
  sources = [
    "source.azure-arm.ubuntu_21",
  ]

  provisioner "shell" {
    inline = [
      "echo Installing Updates",
      "sudo apt-get update",
      "sudo apt-get upgrade -y",
      "sudo apt-get install -y nginx"
    ]
  }

  # provisioner "shell" {
  #   only   = ["source.amazon-ebs.ubuntu*"]
  #   inline = ["sudo apt-get install awscli"]
  # }

  # provisioner "shell" {
  #   only   = ["source.azure-arm.ubuntu*"]
  #   inline = ["sudo apt-get install azure-cli"]
  # }

  # Install Azure CLI
  provisioner "shell" {
    inline = ["curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash"]
  }

  post-processor "manifest" {}

}
