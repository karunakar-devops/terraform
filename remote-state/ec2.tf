resource "aws_instance" "expense" {

    ami = "ami-090252cbe067a9e58"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-055ca458a0ec09ee1"]

    tags = {
        Name = "remote-state"
    }
  
  
}