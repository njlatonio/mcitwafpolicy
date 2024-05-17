variable "subscription_id"{
  type=string
}
variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "resource_name"{
  type=string
}
variable "location"{
  type=string
}
variable "custom_rule_name1"{
  type=string
}
variable "custom_rule_priority1"{
  type=number
}
variable "custom_rule_type1"{
  type=string
}
variable "variable_name1"{
  type=string 
}
variable "operator1"{
  type=string
}
variable "negation_condition1"{
  type=bool
}
variable "match_values1"{
  type=list(string)
}
variable "action"{
  type=string 
}
variable "custom_rule_name2"{
  type=string
}
variable "custom_rule_priority2"{
  type=number
}
variable "custom_rule_type2"{
  type=string
}
variable "variable_name2"{
  type=string 
}
variable "operator2"{
  type=string
}
variable "negation_condition2"{
  type=bool
}
variable "match_values2"{
  type=list(string)
}
variable "variable_name3"{
  type=string 
}
variable "selector"{
  type=string
}
variable "operator3"{
  type=string
}
variable "negation_condition3"{
  type=bool
}
variable "match_values3"{
  type=list(string)
}
variable "policy_settings_enable"{
  type=bool
}
variable "policy_settings_mode"{
  type=string
}
variable "policy_settings_request_body_check"{
  type=bool
}
variable "policy_settings_file_upload_limit_in_mb"{
  type=number
}
variable "policy_settings_max_request_body_size_in_kb"{
  type=number
}
variable "managed_rules_match_variable1"{
  type=string
}
variable "managed_rules_selector1"{
  type=string
}
variable "managed_rules_selector_match_operator1"{
  type=string
}
variable "managed_rules_match_variable2"{
  type=string
}
variable "managed_rules_selector2"{
  type=string
}
variable "managed_rules_selector_match_operator2"{
  type=string
}
variable "managed_rule_set_type"{
  type=string
}
variable "managed_rule_set_version"{
  type=string
}
variable "rule_group_name"{
  type=string
}
variable "rule_id1"{
  type=string
}
variable "rule_enabled1"{
  type=bool
}
variable "rule_action1"{
  type=string
}
variable "rule_id2"{
  type=string
}
variable "rule_enabled2"{
  type=bool
}
variable "rule_action2"{
  type=string
}
