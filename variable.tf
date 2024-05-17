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
  default="example-rg"
}
variable "location"{
  type=string
  default="West Europe"
}
variable "custom_rule_name1"{
  type=string
  default="Rule1"
}
variable "custom_rule_priority1"{
  type=number
  default=1
}
variable "custom_rule_type1"{
  type=string
  default="MatchRule"
}
variable "variable_name1"{
  type=string 
  default="RemoteAddr"
}
variable "operator1"{
  type=string
  default="IPMatch"
}
variable "negation_condition1"{
  type=bool
  default=false
}
variable "match_values1"{
  type=list(string)
  default=["192.168.1.0/24", "10.0.0.0/24"]
}
variable "action"{
  type=string 
  default="Block"
}
variable "custon_rule_name2"{
  type=string
  default="Rule2"
}
variable "custom_rule_priority2"{
  type=number
  default=2
}
variable "custom_rule_type2"{
  type=string
  default="MatchRule"
}
variable "variable_name2"{
  type=string 
  default="RemoteAddr"
}
variable "operator2"{
  type=string
  default="IPMatch"
}
variable "negation_condition2"{
  type=bool
  default=false
}
variable "match_values2"{
  type=list(string)
  default=["192.168.1.0/24"]
}
variable "variable_name3"{
  type=string 
  default="RequestHeaders"
}
variable "selector"{
  type=string
  default="UserAgent"
}
variable "operator3"{
  type=string
  default="Contains"
}
variable "negation_condition3"{
  type=bool
  default=false
}
variable "match_values3"{
  type=list(string)
  default=["Windows"]
}
variable "policy_settings_enable"{
  type=bool
  default=true
}
variable "policy_settings_mode"{
  type=string
  default="Prevention"
}
variable "policy_settings_request_body_check"{
  type=bool
  default=true
}
variable "policy_settings_file_upload_limit_in_mb"{
  type=number
  default=100
}
variable "policy_settings_max_request_body_size_in_kb"{
  type=number
  default=128
}
variable "managed_rules_match_variable1"{
  type=string
  default="RequestHeaderNames"
}
variable "managed_rules_selector1"{
  type=string
  default="x-company-secret-header"
}
variable "managed_rules_selector_match_operator1"{
  type=string
  default="Equals"
}
variable "managed_rules_match_variable2"{
  type=string
  default="RequestCookieNames"
}
variable "managed_rules_selector2"{
  type=string
  default="too-tasty"
}
variable "managed_rules_selector_match_operator2"{
  type=string
  default="EndsWith"
}
variable "managed_rule_set_type"{
  type=string
  default="OWASP"
}
variable "managed_rule_set_version"{
  type=string
  default="3.2"
}
variable "rule_group_name"{
  type=string
  default="REQUEST-920-PROTOCOL-ENFORCEMENT"
}
variable "rule_id1"{
  type=string
  default="920300"
}
variable "rule_enabled1"{
  type=bool
  default=true
}
variable "rule_action1"{
  type=string
  default="Log"
}
variable "rule_id2"{
  type=string
  default="920440"
}
variable "rule_enabled2"{
  type=bool
  default=true
}
variable "rule_action2"{
  type=string
  default="Block"
}
