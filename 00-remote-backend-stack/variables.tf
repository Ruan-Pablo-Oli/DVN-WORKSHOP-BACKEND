variable "tags"{
    type = map(string)
    default = {
        Project = "PB - JUL 2025"
        Name = "PB - JUL 2025"
        CostProject = "CO92000024"
        Environment = "production"
    }
}

variable "auth"{
    type = object({
      profile = string 
    })

    default = {
      profile = "default"
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