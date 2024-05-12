#r53 variables
variable "zone_id" {
    default = "Z07756833TQH9D83ZLVVV"
  
}

variable "domain_name" {
    default = "hornet78s.online"
  
}

#ec2 variables
variable "ami_id" {
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID"
  }

variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
 }

variable "common_tags" {
    default = {
    project = "expense"
    Environment = "dev"
    terraform = "true"

}
  
}

#sg variables
variable "sg_port" {
    default = "22"
  }

variable "sg_protocol" {
  
  default = "tcp"
}

variable "cidr_allow" {
    default = ["0.0.0.0/0"]  
}