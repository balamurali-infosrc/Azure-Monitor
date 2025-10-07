output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.law.id
}
output "app_insights_instrumentation_key" {
  value = azurerm_application_insights.ai.instrumentation_key
   sensitive = true
}
# output "app_insights_instrumentation_key" {
#   value = module.monitoring.app_insights_instrumentation_key
# }

output "app_insights_id" {
  value = azurerm_application_insights.ai.id
}
# output "app_insights_instrumentation_key" {
#   value = azurerm_application_insights.app_insights.instrumentation_key
# }

# output "app_insights_key" {
#   value = azurerm_application_insights.ai.instrumentation_key
# }