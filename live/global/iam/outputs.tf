output "user_arns" {
  value = values(module.users)[*].user_arn
  description = "The ARNs of the created IAM users"
}

output "upper_names" {
    value = [for name in var.user_names: upper(name)]
    description = "Practing using `for` and `upper()`"
}