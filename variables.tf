variable "instance_count" {
  description = "Number of instances to deploy"
  type    = number
  default = 1
}

variable "ami" {
  description = "The ID of the Amazon Machine Image (AMI)"
  type        = string
  default = "ami-0261755bbcb8c4a84"
}

variable "instance_type" {
  description = "The EC2 instance type"
  type = string
  default = "t2.micro"
}