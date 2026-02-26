output "project_name" {
  value = local.formatted_name
}

output "port_list" {
  value = local.port_list
}

output "sg_rules" {
  value = local.sg_rules
}

output "instance_type" {
  value = local.instance_type
}

output "instance_length" {
  value = var.instance_type
}

output "credentials" {
  value = var.credentials
}

output "file_data" {
  value = local.file_data
}

output "time" {
  value = local.time
}

output "date" {
  value = local.date
}

output "cost_center" {
  value = local.cost_center
}

output "max_cost" {
  value = local.max_cost
}

output "min_cost" {
  value = local.min_cost
}

output "total_cost" {
  value = local.total_cost
}

output "average_cost" {
  value = local.average_cost
}
