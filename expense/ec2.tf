resource "aws_instance" "expense"{
    count = length(var.instance_names)
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

tags = merge(
    var.common_tags,
    {
        Name = var.instance_names[count.index]
        Module = var.instance_names[count.index]
        }
)
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh port"

ingress {
    from_port = var.sg_port
    to_port = var.sg_port
    protocol = var.sg_protocol
    cidr_blocks = var.cidr_allow

}

egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.cidr_allow
}
  
# tags ={
#     Name =allow_ssh
#    CreatedBy =Karunakar
        
#     }
}

