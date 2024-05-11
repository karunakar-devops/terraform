variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "sg_name" {
    type = string
    default = "allow_ssh"
  
}

variable "sg_port" {
    type = number
    default = "22"
  
}

variable "sg_portocol" {
    type = string
    default = "tcp"
  
}

variable "cidr_allow" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}

variable "name" {
    type = string
    default = "DB"
  
}