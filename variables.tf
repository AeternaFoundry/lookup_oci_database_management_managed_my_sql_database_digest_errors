variable "database_management_managed_my_sql_database_digest_errors_lookup" {
  description = <<EOT
Map of database_management_managed_my_sql_database_digest_errors_lookup, attributes below
Required:
    - digest
    - managed_my_sql_database_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    digest                     = string
    managed_my_sql_database_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

