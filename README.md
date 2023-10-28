# This is a sample terraform module

## Usage
### Importing module
To use this module, import this module using module block in your root terraform configuration and include a provider block

```
module "child_module" {
  source        = "XYZ"
  # Pass required arguments
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
```

### Supplying values
This module expects the below variables to be passed while calling the module.
```
variable "instance_count" {
  description = "Number of instances to deploy"
  type    = number
}

variable "ami" {
  description = "The ID of the Amazon Machine Image (AMI)"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type = string
}

```
Example
```
module "multi-ec2" {
  source  = "kunchalavikram1427/multi-ec2/aws"
  version = "1.0.0"
  instance_type = "t2.micro"
  ami           = "ami-09d9029d9fc5e5238"
  count = 2
}
```