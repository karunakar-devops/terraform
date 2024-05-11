resource "aws_instance" "db"{
    ami = var.image
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
}