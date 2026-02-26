locals {
  formatted_name   = replace(lower(var.project_name), " ", "-")
  new_tag          = merge(var.default_tags, var.environemnt_tags)
  form_bucket_name = replace(replace(substr(lower(var.bucket_name), 0, 62), " ", ""), " ", "")
  port_list        = split(",", var.port_list)
  sg_rules = [for port in local.port_list : {
    name        = "port-${port}"
    port        = port
    description = "Allow traffic on port ${port}"
  }]

  instance_type = lookup(var.instance_env, var.environment, "t3.micro")

  check_file_exists = fileexists("./filecheck.json")
  file_data         = local.check_file_exists ? jsondecode(file("./filecheck.json")) : null

  time = timestamp()
  date = formatdate("DD_MM_YYYY", local.time)

  cost_center  = [for cost in var.cost_center : abs(cost)]
  max_cost     = max(var.cost_center...)
  min_cost     = min(var.cost_center...)
  total_cost   = sum(var.cost_center)
  average_cost = local.total_cost / length(var.cost_center)
}

resource "aws_s3_bucket" "function-bucket" {
  bucket = local.form_bucket_name
  tags   = local.new_tag
}



