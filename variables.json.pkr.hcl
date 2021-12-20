
# could not parse template for following block: "template: hcl2_upgrade:4: unterminated character constant"

variable "client_id" {
  type    = string
  default = "{{env 'ARM_CLIENT_ID}}"
}

# could not parse template for following block: "template: hcl2_upgrade:4: unterminated character constant"

variable "client_secret" {
  type    = string
  default = "{{env 'ARM_CLIENT_SECRET}}"
}

# could not parse template for following block: "template: hcl2_upgrade:4: malformed character constant: 'ARM_SUBSCRIPTION_ID'"

variable "subscription_id" {
  type    = string
  default = "{{env 'ARM_SUBSCRIPTION_ID'}}"
}

# could not parse template for following block: "template: hcl2_upgrade:4: malformed character constant: 'ARM_TENANT_ID'"

variable "tenant_id" {
  type    = string
  default = "{{env 'ARM_TENANT_ID'}}"
}
