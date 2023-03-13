output "resource_group_id" {
  value = azurerm_resource_group.joselu.id
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.joselu_cluster.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.joselu_cluster.kube_config_raw

  sensitive = true
}

output "vip" {
  value = azurerm_public_ip.pip.ip_address
}
