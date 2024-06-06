resource "aws_ssm_parameter" "main" {
  for_each = var.parameters
  name     = each.key
  type     = each.value["type"]
  value    = each.value["value"]
  key_id   = "arn:aws:kms:us-east-1:590183653013:key/86c6c9b1-d438-4118-a6c8-1ccc8fc4ce55"
}

