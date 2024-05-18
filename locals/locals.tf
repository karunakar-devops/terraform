locals {
    ami_id = "ami-090252cbe067a9e58"
    instance_type = var.instance_names == "db" ? "t3.small" : "t3.micro"
    sg_id = ["sg-055ca458a0ec09ee1"]

    tags = {
        Name = "locals"
    }

}