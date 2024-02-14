resource "aws_ssm_parameter" "main" {
  for_each = var.parameters
  name     = each.key
  type     = each.value["type"]
  value    = each.value["value"]
  key_id   = "arn:aws:kms:us-east-1:369896808580:key/690f4b64-eb25-45af-8c96-51a2c0efe9d9"
}