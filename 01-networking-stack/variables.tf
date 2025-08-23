variable "tags"{
    type = map(string)
}


variable "auth" {
  type = object({
    assume_role_arn = string
    region = string
  })
  description = "O ARN da role a ser assumida pelo Terraform."  
}