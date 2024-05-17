locals{
  waf_policy=[for f in fileset("${path.module}/waffolder", "[^_]*.yaml") : yamldecode(file("${path.module}/waffolder/${f}"))]
  azurewafpolicy_list = flatten([
    for app in local.waf_policy: [
      for azurewaf in try(app.listofwafpolicy, []) :{
        name=azurewaf.policyname
      }
    ]
])
}
resource "azurerm_resource_group" "example" {
  name     = var.resource_name
  location = var.location
}

resource "azurerm_web_application_firewall_policy" "example" {
  for_each            ={for sp in local.azurewafpolicy_list: "${sp.name}"=>sp }
  name                = each.value.name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  custom_rules {
    name      = var.custom_rule_name1
    priority  = var.custom_rule_prioriy1
    rule_type = var.custom_rule_type1

    match_conditions {
      match_variables {
        variable_name = var.variable_name1
      }

      operator           = var.operator1
      negation_condition = var.negation_condition1
      match_values       = var.match_values1
    }

    action = var.action
  }

  custom_rules {
    name      = var.custom_rule_name2
    priority  = var.custom_rule_priority2
    rule_type = var.custom_rule_type2

    match_conditions {
      match_variables {
        variable_name = var.variable_name2
      }

      operator           = var.operator2
      negation_condition = var.negation_condition2
      match_values       = var.match_values2
    }

    match_conditions {
      match_variables {
        variable_name = var.variable_name3
        selector      = var.selector
      }

      operator           = var.operator3
      negation_condition = var.negation_condition3
      match_values       = var.match_values3
    }

    action = var.action
  }

  policy_settings {
    enabled                     = var.policy_settings_enable
    mode                        = var.policy_settings_mode
    request_body_check          = var.policy_settings_request_body_check
    file_upload_limit_in_mb     = var.policy_settings_file_upload_limit_in_mb
    max_request_body_size_in_kb = var.policy_settings_max_request_body_size_in_kb
  }

  managed_rules {
    exclusion {
      match_variable          = var.managed_rules_match_variable1
      selector                = var.managed_rules_selector1
      selector_match_operator = var.managed_rules_selector_match_operator1
    }
    exclusion {
      match_variable          = var.managed_rules_match_variable2
      selector                = var.managed_rules_selector2
      selector_match_operator = var.managed_rules_selector_match_operator2
    }

    managed_rule_set {
      type    = var.managed_rule_set_type
      version = var.managed_rule_set_version
      rule_group_override {
        rule_group_name = var.rule_group_name
        rule {
          id      = var.rule_id1
          enabled = var.rule_enabled1
          action  = var.rule_action1
        }

        rule {
          id      = var.rule_id2
          enabled = var.rule_enabled2
          action  = var.rule_action2
        }
      }
    }
  }
}
