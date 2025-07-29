variable "tags"{
    type = map(string)
    default = {
        Project = "PB - JUL 2025"
        Name = "PB - JUL 2025"
        Environment = "production"
    }
}

variable "auth"{
    type = object({
      assume_role_arn = string 
    })

    default = {
      assume_role_arn = "arn:aws:iam::295934382060:role/workshop-role"
    }
}

variable "remote_backend" {
    type = object({
      s3_bucket = string
    })

    default = {
      s3_bucket = "work"
    }
}