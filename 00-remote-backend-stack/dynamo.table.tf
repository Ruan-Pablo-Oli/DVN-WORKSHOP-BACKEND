resource "aws_dynamodb_table" "this" {
  name           = "workshop-s3-state-locking-tablevn"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

 
}