resource "azurerm_policy_definition" "require_environment_tag" {
  name         = "require-environment-tag"
  display_name = "Require Environment Tag"
  description  = "Audits resources that do not have an Environment tag."
  policy_type  = "Custom"
  mode         = "Indexed"

  policy_rule = <<POLICY
{
  "if": {
    "field": "[concat('tags[', parameters('tagName'), ']')]",
    "exists": "false"
  },
  "then": {
    "effect": "audit"
  }
}
POLICY

  parameters = <<PARAMETERS
{
  "tagName": {
    "type": "String",
    "metadata": {
      "displayName": "Tag Name",
      "description": "Name of the tag that must exist."
    },
    "defaultValue": "Environment"
  }
}
PARAMETERS
}

resource "azurerm_subscription_policy_assignment" "require_environment_tag" {
  name                 = "require-environment-tag"
  display_name         = "Require Environment Tag"
  policy_definition_id = azurerm_policy_definition.require_environment_tag.id
  subscription_id      = "/subscriptions/e12de9ac-e705-40b5-b8ab-7987c0578826"

  parameters = <<PARAMETERS
{
  "tagName": {
    "value": "Environment"
  }
}
PARAMETERS
}