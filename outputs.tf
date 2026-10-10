output "macie2_custom_data_identifiers_id" {
  description = "Map of id values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "macie2_custom_data_identifiers_arn" {
  description = "Map of arn values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "macie2_custom_data_identifiers_created_at" {
  description = "Map of created_at values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "macie2_custom_data_identifiers_description" {
  description = "Map of description values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "macie2_custom_data_identifiers_ignore_words" {
  description = "Map of ignore_words values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.ignore_words if v.ignore_words != null && length(v.ignore_words) > 0 }
}
output "macie2_custom_data_identifiers_keywords" {
  description = "Map of keywords values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.keywords if v.keywords != null && length(v.keywords) > 0 }
}
output "macie2_custom_data_identifiers_maximum_match_distance" {
  description = "Map of maximum_match_distance values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.maximum_match_distance if v.maximum_match_distance != null }
}
output "macie2_custom_data_identifiers_name" {
  description = "Map of name values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "macie2_custom_data_identifiers_name_prefix" {
  description = "Map of name_prefix values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "macie2_custom_data_identifiers_regex" {
  description = "Map of regex values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.regex if v.regex != null && length(v.regex) > 0 }
}
output "macie2_custom_data_identifiers_region" {
  description = "Map of region values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "macie2_custom_data_identifiers_tags" {
  description = "Map of tags values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "macie2_custom_data_identifiers_tags_all" {
  description = "Map of tags_all values across all macie2_custom_data_identifiers, keyed the same as var.macie2_custom_data_identifiers"
  value       = { for k, v in aws_macie2_custom_data_identifier.macie2_custom_data_identifiers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

