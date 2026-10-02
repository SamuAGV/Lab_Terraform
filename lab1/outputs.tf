output "application_name" {
  value = random_string.suffix.result
}

output "unique_name" {
  value = local.unique_name
}

# ---------- Salidas nuevas ----------

output "enable_monitoring" {
  description = "Indica si el monitoreo está habilitado"
  value       = var.enable_monitoring
}

output "region" {
  description = "Lista de regiones donde se desplegará la aplicación"
  value       = var.region
}

output "environment_tags" {
  description = "Mapa de tags por ambiente"
  value       = var.environment_tags
}

output "application_config" {
  description = "Configuración de la aplicación (versión, maintainer, dependencias)"
  value       = var.application_config
}

output "allowed_networks" {
  description = "Conjunto de redes permitidas"
  value       = var.allowed_networks
}