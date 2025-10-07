resource "azurerm_monitor_metric_alert" "cpu_alert" {
  name                = "cpu-alert"
  resource_group_name = azurerm_resource_group.rg.name
  scopes              = [azurerm_application_insights.ai.id]  # <- correct name
  description         = "Alert for high CPU"
  severity            = 2
  frequency           = "PT5M"
  window_size         = "PT5M"

  criteria {
    metric_namespace = "microsoft.insights/components"
    metric_name      = "requests/count"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 5
  }
}
resource "azurerm_monitor_action_group" "example" {
  name                = "example-action-group"
  resource_group_name = azurerm_resource_group.rg.name
  short_name          = "example"

  email_receiver {
    name          = "admin-email"
    email_address = "balait20@gmail.com"
  }
}
#   action {
#     action_group_id = "<YOUR_ACTION_GROUP_ID>"
#   }

