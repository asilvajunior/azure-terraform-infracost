resource "azurerm_resource_group" "ccd-rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "ccd-vnet" {
  name                = "${var.prefix}-vnet"
  resource_group_name = azurerm_resource_group.ccd-rg.name
  location            = azurerm_resource_group.ccd-rg.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "ccd-subnet" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.ccd-rg.name
  virtual_network_name = azurerm_virtual_network.ccd-vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "ccd-nic" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.ccd-rg.location
  resource_group_name = azurerm_resource_group.ccd-rg.name

  ip_configuration {
    name                          = "ipconfig"
    subnet_id                     = azurerm_subnet.ccd-subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "ccd-vm" {
  name                            = "${var.prefix}-vm"
  location                        = azurerm_resource_group.ccd-rg.location
  resource_group_name             = azurerm_resource_group.ccd-rg.name
  network_interface_ids           = [azurerm_network_interface.ccd-nic.id]
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
