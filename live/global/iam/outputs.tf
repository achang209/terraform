output "user_arns" {
  value = values(module.users)[*].user_arn
  description = "The ARNs of the created IAM users"
}

output "upper_names" {
    value = [for name in var.user_names: upper(name) if length(name) < 5]
    description = "Practing using `for` and `upper()`"
}

output "bios" {
  value = [for name, role in var.hero_thousand_faces : "${name} is the ${role}"]
}