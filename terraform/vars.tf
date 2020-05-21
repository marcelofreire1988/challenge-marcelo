variable "amis" {
  description = "ami for ubuntu image"
  default = {
    "us-east-1" = "ami-026c8acd92718196b"
  }
}

variable "machine-size" {
  type        = object({ regular-size = string })
  description = "size of instances in aws"
  default = {
    regular-size = "t2.micro"
  }
}

variable "ingress-ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 8080, 80]

}

variable "key-name" {
  description = "key in aws"
  default     = "ansible-study"
}

