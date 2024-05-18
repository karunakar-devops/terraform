resource "aws_instance" "db" {
    
    ami = data.aws_ami.ami_info.id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-055ca458a0ec09ee1"]

    tags = {
        Name = "data-source-practice"
    }
  
}