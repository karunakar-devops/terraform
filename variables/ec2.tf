resource "aws_instance" "db"{
    ami = "ami-090252cbe067a9e58"
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

tags = {
    Name = var.name
}
}


resource "aws_security_group" "allow_ssh"{
    name = var.sg_name
    description = " allowing SSH access"

ingress{
    from_port = var.sg_port
    to_port = var.sg_port
    protocol = var.sg_portocol
    cidr_blocks = var.cidr_allow
}
egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = {
    Name = "ssh"
    CreatedBy = "karunakar"

}
}