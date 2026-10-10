variable "macie2_custom_data_identifiers" {
  description = <<EOT
Map of macie2_custom_data_identifiers, attributes below
Optional:
    - description
    - ignore_words
    - keywords
    - maximum_match_distance
    - name
    - name_prefix
    - regex
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    description            = optional(string)
    ignore_words           = optional(set(string))
    keywords               = optional(set(string))
    maximum_match_distance = optional(number)
    name                   = optional(string)
    name_prefix            = optional(string)
    regex                  = optional(string)
    region                 = optional(string)
    tags                   = optional(map(string))
    tags_all               = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.macie2_custom_data_identifiers : (
        v.ignore_words == null || (alltrue([for x in v.ignore_words : length(x) >= 4 && length(x) <= 90]))
      )
    ])
    error_message = "must be between 4 and 90 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.macie2_custom_data_identifiers : (
        v.keywords == null || (alltrue([for x in v.keywords : length(x) >= 3 && length(x) <= 90]))
      )
    ])
    error_message = "must be between 3 and 90 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.macie2_custom_data_identifiers : (
        v.maximum_match_distance == null || (v.maximum_match_distance >= 1 && v.maximum_match_distance <= 300)
      )
    ])
    error_message = "must be between 1 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.macie2_custom_data_identifiers : (
        v.regex == null || (length(v.regex) >= 0 && length(v.regex) <= 512)
      )
    ])
    error_message = "must be between 0 and 512 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

