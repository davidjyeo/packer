source "azure-arm" "ubuntu_21" {
  client_id                         = "0da70c7d-213b-4fd9-8e97-e414e5fa6190"
  client_secret                     = "YWUV-SzoyrkEJ02Ve1B93lbShs6eqlVu~H"
  tenant_id                         = "88ef261e-b19b-4d71-9afd-cdac31a6dcda"
  subscription_id                   = "d0f6eb41-3e86-48da-bc57-893eab20796f"
  managed_image_resource_group_name = "packer_images"
  managed_image_name                = "packer-ubuntu-azure-${formatdate("YYYY.MM.DD_HH.mm", timestamp())}"

  os_type         = "Linux"
  image_publisher = "Canonical"
  image_offer     = "0001-com-ubuntu-server-impish"
  image_sku       = "21_10-gen2"

  azure_tags = {
    Created-by = "Packer"
    OS_Version = "Ubuntu 21.10"
    Release    = "Latest"
  }

  location = var.az_locations
  vm_size  = "Standard_B1ms"
}