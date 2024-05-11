variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
     description = "RHEL-9 AMI ID"
  
}

variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]  
}

# variable "common_tags" {
#     type = string
#     default = {
#     Environment ="Dev"
#     Module = "Dev"
    
#     }
# }