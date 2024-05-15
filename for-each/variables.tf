variable "instance_names" {
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }

    
}

#r53 variables
variable "zone_id" {
    default = "Z07756833TQH9D83ZLVVV"
  
}

variable "domain_name" {
    default = "hornet78s.online"
  
}
